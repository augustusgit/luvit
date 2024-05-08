import 'package:flutter/material.dart';
import 'package:luvit/screen/luvit_status.dart';
import 'package:luvit/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Luv It',
      theme: AppThemeData.darkTheme,
      home: const StatusPage(),
    );
  }
}

