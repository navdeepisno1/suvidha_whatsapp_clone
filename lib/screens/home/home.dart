import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/calls/calls.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/camera/camera.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/chats/chats.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/status/status.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key, this.cameras}) : super(key: key);
  final List<CameraDescription> cameras;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText('WhatsApp'),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              padding: EdgeInsets.zero,
              itemBuilder: (_) => <PopupMenuItem<String>>[
                PopupMenuItem(
                  child: CustomText('New group'),
                ),
                PopupMenuItem(
                  child: CustomText('New broadcast'),
                ),
                PopupMenuItem(
                  child: CustomText('WhatsApp Web'),
                ),
                PopupMenuItem(
                  child: CustomText('Starred Messages'),
                ),
                PopupMenuItem(
                  child: CustomText('Payments'),
                ),
                PopupMenuItem(
                  child: CustomText('Settings'),
                ),
              ],
            )
          ],
          bottom: buildTabBar(context),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen()
          ],
        ),
        floatingActionButton: (_tabIndex == 2)
            ? FloatingActionButton(
                child: Icon(Icons.camera_alt_rounded),
              )
            : FloatingActionButton(
                child: Icon(Icons.chat_rounded),
              ),
      ),
    );
  }

  TabBar buildTabBar(BuildContext context) {
    double width = 72;
    return TabBar(
      isScrollable: true,
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      indicatorColor: Colors.white,
      indicatorWeight: 3,
      tabs: [
        Container(width: width, child: Icon(Icons.camera_alt_rounded)),
        Container(
          width: (MediaQuery.of(context).size.width - width) / 3,
          child: Tab(
            text: 'Chats',
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - width) / 3,
          child: Tab(
            text: 'Status',
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width - width) / 3,
          child: Tab(
            text: 'Calls',
          ),
        ),
      ],
    );
  }
}
