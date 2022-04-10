import 'package:alertdialog_in_flutter/themes/color_palette.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'AlertDialog';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: ColorPalette.materialColor,
      ),
      routes: {
        '/':(_)=>HomeScreen(title:_title),
      },
    );
  }
}
