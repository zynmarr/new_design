import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards(
    this.imageUrl,
    this.name,
    this.old,
    this.gender,
    this.company,
    this.address,
    this.verified,
  );
  final String imageUrl, name, gender, company, address;
  final int old;
  final bool verified;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black45,
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xFFffffff).withOpacity(0.5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '$name, $old',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.verified_user,
                        color: verified ? Colors.deepOrangeAccent[400] : Colors.grey,
                      ),
                    ],
                  ),
                  Text(
                    gender == 'L' ? 'Laki - Laki' : 'Perempuan',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    company,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    address,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Report');
              },
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.all(2),
                child: Icon(
                  Icons.info,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
