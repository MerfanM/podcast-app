import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast_app/podcast_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("P",
                            style:
                                TextStyle(color: Colors.black, fontSize: 30)),
                        Text("o",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 30)),
                        Text("dcast",
                            style:
                                TextStyle(color: Colors.black, fontSize: 30)),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffE85C19),
                                    Color(0xffFFBB82)
                                  ],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  width: 3, color: Color(0xff707070))),
                        ),
                        Image.asset("assets/girl.png"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                          offset: Offset(0, 20),
                        ),
                      ]),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 5),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff656872),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Podcasts...",
                              style: TextStyle(color: Color(0xffdddddd)),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Icon(Icons.search, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 40,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xff656872),
                        thickness: 0.8,
                      ),
                      Text(
                        "Your category",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          CategoryWidget(
                              color: Colors.deepOrangeAccent, text: "UI"),
                          SizedBox(width: 10),
                          CategoryWidget(color: Color(0xff656872), text: "UX"),
                          SizedBox(width: 10),
                          CategoryWidget(
                              color: Color(0xff656872), text: "Logo"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CategoryWidget(color: Color(0xff656872), text: "Art"),
                          SizedBox(width: 10),
                          CategoryWidget(
                              color: Color(0xff656872), text: "Idea"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(0.0)),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 27),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "UI Podcasts",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                PodcastWidget(
                  img: "assets/img1.png",
                  text1: "UI Narrative",
                  text2: "podtail",
                  icon: Icon(Icons.pause, color: Colors.white),
                  color: Colors.deepOrangeAccent,
                ),
                SizedBox(height: 20),
                PodcastWidget(
                  img: "assets/img2.png",
                  text1: "UX Podcast",
                  text2: "Announcer Name",
                  icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
                  color: Color(0xff676B76),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PodcastScreen()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff676B76), Color(0xffA0A4AE)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 20),
                          color: Color(0xff676B76).withOpacity(0.4),
                          blurRadius: 40,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/img1.png"),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Empathizing With users",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "08:16 / 20:21",
                                  style: TextStyle(color: Color(0xffDEDBDB)),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.pause,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.deepOrangeAccent, fontSize: 17),
                          ),
                          SizedBox(height: 5),
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            radius: 4,
                          )
                        ],
                      ),
                      Image.asset("assets/hearico.png"),
                      Image.asset("assets/gapico.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PodcastWidget extends StatelessWidget {
  const PodcastWidget({
    Key key,
    this.img,
    this.text1,
    this.text2,
    this.color,
    this.icon,
  }) : super(key: key);

  final String img;
  final String text1;
  final String text2;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(img),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: icon,
        ),
      ],
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
    this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: color),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
