import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/colors/app_color/app_colors.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/constants/constants.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/widgets/custom_text.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({key}) : super(key: key);

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
          namesList.length,
          (index) => Container(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(
                        'https://source.unsplash.com/random/200x200?sig=$index'),
                  ),
                  title: CustomText(namesList[index]),
                  subtitle: Row(
                    children: [
                      Icon(
                        (index % 3 == 0)
                            ? Icons.call_missed_outgoing_rounded
                            : Icons.call_received,
                        color: kColorPrimary,
                        size: 16,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomText('May 20,12:48 PM'),
                    ],
                  ),
                  trailing: MaterialButton(
                    child: Icon(
                      (index % 2 == 0) ? Icons.phone : Icons.videocam_rounded,
                      color: kColorPrimary,
                    ),
                  ),
                ),
              )),
    );
  }
}
