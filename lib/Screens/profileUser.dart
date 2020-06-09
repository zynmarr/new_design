import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileUser extends StatefulWidget {
  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  int onTapChange = 0;
  final List childrenBody = [
    ChildUser(),
    ChildWork(),
    ChildMore(),
  ];
  void onTap(int index) {
    setState(() {
      onTapChange = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              // margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 3.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/user2.jpg'),
                  fit: BoxFit.fill,
                ),
                // borderRadius: BorderRadius.circular(100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      onTap(0);
                      print(onTapChange);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        FontAwesomeIcons.userAlt,
                        color: onTapChange == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onTap(1);
                      print(onTapChange);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        FontAwesomeIcons.graduationCap,
                        color: onTapChange == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      onTap(2);
                      print(onTapChange);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        FontAwesomeIcons.ellipsisH,
                        // size: 40,
                        color: onTapChange == 2 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            childrenBody[onTapChange],
          ],
        ),
      ),
    );
  }
}

class ChildUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // color: Colors.blueAccent,
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          CardUser(
            title: 'Nama Lengkap',
            subTitle: 'Muammar Khadafi',
          ),
          CardUser(
            title: 'Jenis Kelamin',
            subTitle: 'Laki-Laki',
            // iconData: FontAwesomeIcons.userCog,
          ),
          CardUser(
            title: 'Tanggal Lahir',
            subTitle: '12-02-1997',
            // iconData: FontAwesomeIcons.userAlt,
          ),
          CardUser(
            title: 'Alamat',
            subTitle: 'Indonesia, Aceh Besar, Blang Bintang',
            // iconData: FontAwesomeIcons.userAlt,
          ),
        ],
      ),
    );
  }
}

class ChildWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // color: Colors.blueAccent,
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          CardUser(
            title: 'Pekerjaan',
            subTitle: 'App Development',
          ),
          CardUser(
            title: 'Study',
            subTitle: 'Universitas Abulyatama',
            // iconData: FontAwesomeIcons.userCog,
          ),
        ],
      ),
    );
  }
}

class ChildMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // color: Colors.blueAccent,
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            // padding: EdgeInsets.only(left: 10),
            child: Text(
              'Verifikasi Akun :',
              // textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2),
          ),
          CardUser(
            title: 'Email',
            subTitle: 'Example@gmail.com',
            iconData: FontAwesomeIcons.envelope,
          ),
          CardUser(
            title: 'Hp',
            subTitle: '12345678',
            iconData: FontAwesomeIcons.mobileAlt,
          ),
        ],
      ),
    );
  }
}

class CardUser extends StatelessWidget {
  final String title, subTitle;
  final IconData iconData;
  CardUser({
    this.title,
    this.subTitle,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      // height: 100,
      margin: EdgeInsets.only(top: 2, bottom: 2),
      decoration: BoxDecoration(
        // color: Colors.blue,
        border: Border.all(
          width: 0.8,
          color: Colors.grey[400],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          iconData == null
              ? Container()
              : Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    iconData,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$title :',
                  style: TextStyle(fontSize: 18, color: Colors.grey[600]
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(
                  height: 3,
                ),
                title == 'Email' || title == 'Hp'
                    ? Row(
                        children: <Widget>[
                          Text(
                            subTitle,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          (title == 'Email')
                              ? Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.blue,
                                )
                              : Container(),
                          (title == 'Hp')
                              ? Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.blue,
                                )
                              : Container(),
                        ],
                      )
                    : Text(
                        subTitle,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Edit $title');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.edit,
                size: 25,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
