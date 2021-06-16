import 'package:flutter/material.dart';
import 'package:suvidha_whatsapp_clone_ui/screens/home/home.dart';
import 'package:suvidha_whatsapp_clone_ui/utils/colors/app_color/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: kColorPrimary,
        accentColor: kColorSecondary,
      ),
      home: HomeScreen(),
    );
  }
}
