import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/status.dart';

import 'camera.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp',
        debugShowCheckedModeBanner: false,
        color: Colors.green,
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.greenAccent[700]),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WhatsAppHomePage(
          title: 'WhatsApp',
        ));
  }
}

class WhatsAppHomePage extends StatefulWidget {
  WhatsAppHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WhatsAppHomePageState createState() => _WhatsAppHomePageState();
}

class _WhatsAppHomePageState extends State<WhatsAppHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
    _tabController.animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Text(widget.title),
        bottom: TabBar(
          unselectedLabelColor: Colors.white54,
          labelColor: Colors.white,
          indicatorColor: Colors.greenAccent[700],
          tabs: [
            new Tab(
                icon: new Icon(
              Icons.camera_alt,
            )),
            new Tab(
              text: "CHATS",
            ),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS")
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
        controller: _tabController,
      ),
    );
  }
}
