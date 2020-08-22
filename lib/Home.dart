import 'package:flutter/material.dart';
import 'Calls.dart';
import 'Camera.dart';
import 'Chat.dart';
import 'Status.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.camera_enhance,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                "Chats",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                "Status",
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                "Calls",
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[Camera(), Chat(), Status(), Calls()],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
