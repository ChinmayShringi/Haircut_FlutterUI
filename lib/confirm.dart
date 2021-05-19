import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(top: size.height / 16),
            child: Text('BOOKING',
                style: TextStyle(
                    fontFamily: 'Oswald', fontSize: 16.0, color: Colors.white)),
          ),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 120.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.01),
                    spreadRadius: 4.0)
              ], color: Colors.white),
            ),
          ])
        ]));
  }
}
