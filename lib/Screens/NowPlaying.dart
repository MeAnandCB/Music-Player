// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'allSong.dart';

class Nowplaying extends StatefulWidget {
  const Nowplaying({super.key});

  @override
  State<Nowplaying> createState() => _NowplayingState();
}

class _NowplayingState extends State<Nowplaying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xffdcdcdc),
                    radius: 25,
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 35,
                      color: Color(0xff434343),
                    ),
                  ),
                  Text('Now playing'),
                  CircleAvatar(
                    backgroundColor: Color(0xffdcdcdc),
                    radius: 25,
                    child: Icon(
                      Icons.menu,
                      size: 20,
                      color: Color(0xff434343),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Song Title',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '03:50',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 115,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.26b4d77edba3719089bd61010708cbf6?rik=cGj9%2bmjk%2b5NKHg&riu=http%3a%2f%2fcyberbargins.net%2favatar2.jpg&ehk=wVOsFvG53JSGWsU5iysfeNG696r0nSetxIZRIYOWHa0%3d&risl=&pid=ImgRaw&r=0'),
                    ),
                  ),
                  CircularPercentIndicator(
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 150,
                    lineWidth: 10,
                    percent: .8,
                    progressColor: Color(0xff434343),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Song Title',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Album Titile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Color(0xffe7e7e9),
              ),
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    Icons.dnd_forwardslash_rounded,
                    size: 30,
                  ),
                  Icon(
                    Icons.skip_previous,
                    size: 55,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: const [
                              Color(0xff04686a),
                              Color.fromARGB(255, 77, 208, 206),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllSongs(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.play_arrow,
                          size: 45,
                          color: Colors.white,
                        ),
                      )),
                  Icon(
                    Icons.skip_next,
                    size: 55,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff434343),
        unselectedItemColor: Color(0xff434343),
        backgroundColor: Color(0xffe7e7e9),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.repeat), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shuffle), label: ''),
        ],
      ),
    );
  }
}
