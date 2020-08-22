import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modal/chat.dart';

class Chat extends StatefulWidget {
  ChatState createState() => ChatState();
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      Column(
        children: <Widget>[
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(messageData[i].name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                Text(messageData[i].time, style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0
                ),),


              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(messageData[i].message, style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0
              ),),
            ),
          )
        ],
      );
    },
        itemCount: messageData.length);
  }
}