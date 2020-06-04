import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:message_apps/Screens/Menu/home.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String username, password;
  var _autovalidate = true;
  bool _secureText = true;

  bool _remember = false;
  final _key = GlobalKey<FormState>();
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: _autovalidate,
      key: _key,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.only(bottom: 10.0),
                  child: TextFormField(
                    onSaved: (e) => username = e,
                    validator: (e) {
                      if (e.isEmpty) {
                        return "Username is empty";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "username",
                      // labelStyle: TextStyle(fontSize: 18),
                      icon: Icon(
                        Icons.mail,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  margin: EdgeInsets.only(top: 10, bottom: 30.0),
                  child: TextFormField(
                    validator: (e) {
                      if (e.isEmpty) {
                        return "Password is empty";
                      }
                      return null;
                    },
                    obscureText: _secureText,
                    onSaved: (e) => password = e,
                    decoration: InputDecoration(
                      labelText: "Password",
                      // labelStyle: TextStyle(fontSize: 18),
                      icon: Icon(
                        FontAwesomeIcons.lock,
                        size: 28,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        onPressed: showHide,
                        icon: Icon(_secureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 12,
            margin: EdgeInsets.only(left: 40, right: 40),
            transform: Matrix4.translationValues(0.0, -25.0, 0.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: RaisedButton(
              splashColor: Color(0xFFff1744),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              padding: const EdgeInsets.all(0.0),
              onPressed: () {
                setState(() {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Home()));
                });
              },
              color: Colors.transparent,
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  gradient: LinearGradient(
                    colors: [Color(0xFFffc247), Color(0xFFff249c)],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).textScaleFactor + 20,
                          fontFamily: 'Viga',
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            transform: Matrix4.translationValues(0.0, -15.0, 0.0),
            decoration: BoxDecoration(
                // color: Colors.grey,
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container(
                //   alignment: Alignment.centerLeft,
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: <Widget>[
                //       Checkbox(
                //         value: this._remember,
                //         onChanged: (bool val) {
                //           setState(() {
                //             _remember = val;
                //             print(val);
                //           });
                //         },
                //       ),
                //       Text(
                //         "Remember Me!",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: MediaQuery.of(context).textScaleFactor + 15,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Spacer(),
                Text(
                  "Can't login?",
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: MediaQuery.of(context).textScaleFactor + 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    print('Oke');
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).textScaleFactor + 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
