import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/widgets/custom_text.dart';

class ChatListTile extends StatefulWidget {
  const ChatListTile({key, this.k, this.name = 'Name'}) : super(key: key);
  final int k;
  final String name;
  @override
  _ChatListTileState createState() => _ChatListTileState();
}

class _ChatListTileState extends State<ChatListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(
              'https://source.unsplash.com/random/200x200?sig=${widget.k}'),
        ),
        title: CustomText(widget.name),
        subtitle: CustomText('Message'),
        trailing: CustomText('time'),
      ),
    );
  }
}
