import 'package:firstproject/home_screen.dart';
import 'package:flutter/material.dart';
import 'message_theme.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '데모',
      theme: MessageTheme.dark(),
      darkTheme: MessageTheme.dark(),
      home: const HomeScreen()
    );
  }
}



