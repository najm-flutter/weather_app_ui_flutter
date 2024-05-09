import 'package:flutter/material.dart';
import 'package:test_clip_path/presintation/pages/home_page.dart';
import 'package:test_clip_path/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme(),
      home: const HomePage(),
    );
  }
}
