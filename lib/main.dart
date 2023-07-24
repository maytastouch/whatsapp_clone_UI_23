import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/respinsive/responsive_layout.dart';

import 'package:whatsapp_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: backgroundColor,
          //primaryColorDark: Colors.red,
          //primaryColorDark: backgroundColor,
          //accentColor: Colors.red,
          //primarySwatch: Colors.red,
        ).copyWith(
          secondary: Colors.teal, // Example: Setting secondary color to teal
        ),
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebbScreenLayout()),
    );
  }
}
