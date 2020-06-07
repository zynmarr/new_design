import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:message_apps/Models/userModels.dart';
import 'package:message_apps/Screens/shoUser.dart';
import 'dart:ui';
import 'package:message_apps/items/itemSwipers.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SwiperController controllerSwipe = SwiperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: CustomMyClipper(),
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange[400],
                      Colors.redAccent,
                      Colors.pink[400],
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Viga',
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          child: Icon(
                            Icons.sort,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
                                    spreadRadius: 0.6,
                                    blurRadius: 9,
                                    offset: Offset(2, 6),
                                  ),
                                ],
                              ),
                              child: Swiper(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  var x = users[index];
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ShowUser(
                                            data: x,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Cards(
                                      x.imageUrl,
                                      x.name,
                                      x.old,
                                      x.gender,
                                      x.jobs,
                                      x.location,
                                      x.verified,
                                    ),
                                  );
                                },
                                controller: controllerSwipe,
                                physics: NeverScrollableScrollPhysics(),
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      print('Share');
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 45.0,
                                      width: 45.0,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent[100],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.share,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              controllerSwipe.next();
                                            });
                                            print('close');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            height: 65.0,
                                            width: 65.0,
                                            decoration: BoxDecoration(
                                              color: Colors.redAccent[100],
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.clear,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              controllerSwipe.next();
                                            });
                                            print('Love');
                                          },
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            height: 80.0,
                                            width: 80.0,
                                            decoration: BoxDecoration(
                                              color: Colors.pink[200],
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.pinkAccent,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.favorite,
                                                  size: 35,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Favorit');
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 45.0,
                                      width: 45.0,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent[100],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.grade,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomMyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 1.7);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height / 1.7);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
