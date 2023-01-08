// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Screens/mainWindow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: MainWindow()),
      ),
    );
  }
}
