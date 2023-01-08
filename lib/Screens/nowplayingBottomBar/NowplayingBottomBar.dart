// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NowPlayingBottomBar extends StatefulWidget {
  const NowPlayingBottomBar({super.key});

  @override
  State<NowPlayingBottomBar> createState() => _NowPlayingBottomBarState();
}

class _NowPlayingBottomBarState extends State<NowPlayingBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Color(0xff434343),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
          ),
          title: Text(
            'Song Title',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          subtitle: Text(
            'Album Name',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          trailing: Icon(
            Icons.play_circle_outline_rounded,
            size: 55,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
