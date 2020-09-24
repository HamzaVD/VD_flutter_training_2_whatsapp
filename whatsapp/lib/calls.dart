import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
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
                  title: Text(
                    "+92 0333 1234567",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Row(
                    children: [
                      index % 2 == 0
                          ? Icon(
                              Icons.call_made,
                              color: Colors.green,
                              size: 15,
                            )
                          : Icon(
                              Icons.call_end,
                              color: Colors.red,
                              size: 15,
                            ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Yesterday at 5 pm"),
                      ),
                    ],
                  ),
                  trailing: index % 2 == 0
                      ? Icon(
                          Icons.call_made,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.call_end,
                          color: Colors.red,
                        ),
                ),
              );
            }));
  }
}
