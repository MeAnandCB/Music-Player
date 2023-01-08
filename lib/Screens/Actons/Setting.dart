// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingMainScreen extends StatelessWidget {
  const SettingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("First"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Second"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Second"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Second"),
                value: 2,
              ),
            ]);
  }
}
