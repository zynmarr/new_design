import 'package:flutter/material.dart';

class OnlineUser extends StatelessWidget {
  OnlineUser(
    this.image,
    this.nama,
    this.check,
  );

  final String image, nama;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0.0, right: 10, top: 5, bottom: 0),
      child: Column(
        children: <Widget>[
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: AssetImage('$image'),
                fit: BoxFit.fill,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(right: 3, bottom: 3),
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: check == true
                      ? Colors.lightGreenAccent[400]
                      : Colors.grey,
                  border: Border.all(color: Colors.white, width: 2.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            nama,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Viga',
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
