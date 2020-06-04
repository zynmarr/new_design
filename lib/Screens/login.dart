import 'package:flutter/material.dart';
import 'package:message_apps/items/itemLogin.dart';
import 'package:message_apps/items/itemRegister.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool login = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.orange[400],
                Colors.pink[400],
              ],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20),
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //   begin: Alignment.topCenter,
                    //   end: Alignment.bottomCenter,
                    //   colors: [Color(0xFFffc247), Color(0xFFff249c)],
                    // ),
                    // color: Colors.white,
                    ),
                child: Image.asset(
                  'assets/img/logo.png',
                  // color: Colors.transparent,
                  // width: MediaQuery.of(context).size.width,
                  // height: 400,
                  scale: 4,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.only(top: 2, bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            login = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              color:
                                  login == true ? Colors.white : Colors.black45,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "Exiting",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  login == false ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            login = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              color:
                                  login == false ? Colors.white : Colors.black45,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            "New",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  login == true ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              login == true ? LoginWidget() : RegisterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
