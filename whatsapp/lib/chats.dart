import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent[700],
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: new Text(
                    "Friend $index",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: new Text("I will meet you at $index"),
                  trailing: Text("12:45 am"),
                ),
              );
            }));
  }
}
