import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/colors/app_color/app_colors.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/constants/constants.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/widgets/custom_text.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: ListTile(
            leading: Container(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(
                        'https://source.unsplash.com/random/200x200'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: kColorPrimary),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            title: CustomText('My Status'),
            subtitle: CustomText('Tap to add status update'),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "New Updates",
                fontWeight: FontWeight.bold,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://source.unsplash.com/random/200x200?sig=${index + 6}'),
                      ),
                      title: CustomText(namesList[index + 2]),
                      subtitle: CustomText('Time'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                "Viewed Updates",
                fontWeight: FontWeight.bold,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://source.unsplash.com/random/200x200?sig=$index'),
                      ),
                      title: CustomText(namesList[index]),
                      subtitle: CustomText('Time'),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        ExpansionTile(
          title: CustomText('Muted updates'),
          children: List.generate(
            4,
            (index) => Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 32,
                  backgroundImage: NetworkImage(
                      'https://source.unsplash.com/random/200x200?sig=$index'),
                ),
                title: CustomText(namesList[index]),
                subtitle: CustomText('Time'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
