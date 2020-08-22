import 'package:flutter/material.dart';
import 'modal/calls.dart';

class Calls extends StatefulWidget {
  CallsState createState() => CallsState();
}

class CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, i) {
          Column(
            children: <Widget>[
              Divider(
                height: 20.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  maxRadius: 25.0,
                  backgroundImage: NetworkImage(callData[i].imageUrl),
                ),
                title: Text(
                  callData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    callData[i].time,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ),
                trailing: Icon(Icons.call),
                selected: true,
              )
            ],
          );
        },
        itemCount: callData.length);
  }
}
