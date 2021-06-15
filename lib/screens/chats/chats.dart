import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/chats/utils/chat_list_tile.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/constants/constants.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: namesList.length,
        itemBuilder: (context, index) => ChatListTile(
              k: index,
              name: namesList[index],
            ));
  }
}
