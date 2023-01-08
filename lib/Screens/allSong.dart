// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'mainWindow.dart';
import 'nowplayingBottomBar/NowplayingBottomBar.dart';

class AllSongs extends StatefulWidget {
  const AllSongs({super.key});

  @override
  State<AllSongs> createState() => _AllSongsState();
}

class _AllSongsState extends State<AllSongs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              gradient: LinearGradient(colors: const [
                Color.fromARGB(255, 8, 115, 117),
                Color.fromARGB(255, 77, 208, 206),
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              borderRadius: BorderRadius.circular(35),
            ),
            height: 370,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainWindow(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 28, 147, 149),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 35,
                            ),
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 28, 147, 149),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search your Music",
                                hintStyle: TextStyle(
                                    fontSize: 12, color: Color(0xff67bfc0)),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 20,
                                  color: Color(0xff67bfc0),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: Color.fromARGB(255, 8, 115, 117),
                        child: Icon(
                          Icons.headphones,
                          color: Color.fromARGB(255, 28, 147, 149),
                          size: 80,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Singer',
                            style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Song Title',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '7 album - 50 tracks',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Tracks',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff434343),
                  ),
                ),
                Text('View More')
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ListView.separated(
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff04686a),
                    ),
                    title: Text(
                      'Song Title',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Album Name'),
                    trailing: Icon(Icons.more_vert_rounded),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
          ),
          NowPlayingBottomBar()
        ],
      ),
    );
  }
}
