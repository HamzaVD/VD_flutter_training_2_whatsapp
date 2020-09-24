import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext ctxt, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.all(6),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/nature.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      title: new Text(
                        "Status $index",
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: new Text("Today at 10:20 am"),
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                    )
                  ],
                ),
              );
            }));
  }
}
