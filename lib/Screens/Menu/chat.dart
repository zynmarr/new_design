import 'package:flutter/material.dart';
import 'package:message_apps/Models/messageModels.dart';
import 'package:message_apps/Models/userModels.dart';
import 'package:message_apps/Screens/message.dart';
import 'package:message_apps/items/onlineUsers.dart';
// import 'package:message_apps/items/recentMsg.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool onTapChange = false;
  Widget recentMsg(
    String name,
    image,
    time,
    message,
    bool read,
    data,
  ) {
    return Container(
      height: 80,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SendMsg(user: data,)));
        },
        onLongPress: () {
          setState(() {
            onTapChange = !onTapChange;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: <Widget>[
              Container(
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 17.0,
                              fontFamily: "Viga",
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11.5,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            message,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: read == true ? Colors.grey : Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          read == false
                              ? Text(
                                  "New",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    onTapChange
                        ? Text(
                            "Messages",
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Viga',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 25,
                            ),
                            onPressed: () {
                              setState(() {
                                onTapChange = !onTapChange;
                              });
                            },
                          ),
                    onTapChange
                        ? Container()
                        : Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 25,
                                  color: Colors.red,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.more_vert,
                                  size: 25,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Form(
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300],
                    ),
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.grey[700],
                        ),
                        hintText: "Search...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 0, bottom: 0),
                  height: 10,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Colors.grey[300],
                          style: BorderStyle.solid,
                          width: 2.0),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 0, top: 5),
                  height: 25,
                  child: Text(
                    "ONLINE USERS",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Viga',
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                Container(
                  height: 90.0,
                  // color: Colors.grey,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: likes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SendMsg(
                                        user: likes[index],
                                      )));
                                      print(likes[index].id);
                          setState(() {});
                        },
                        child: OnlineUser(
                          likes[index].imageUrl,
                          likes[index].name,
                          likes[index].online,
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(top: 0, bottom: 0),
                  height: 10,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[300],
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  final Message chat = chats[index];
                  return Container(
                    // transform: Matrix4.translationValues(0.0, -22.0, 0.0),
                    child: recentMsg(
                      chat.sender.name,
                      chat.sender.imageUrl,
                      chat.time,
                      chat.text,
                      chat.unread,
                      chat.sender,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
