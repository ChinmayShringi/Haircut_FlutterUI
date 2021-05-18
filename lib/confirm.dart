import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Confirm',
            style: TextStyle(
                fontFamily: 'FirSans', fontSize: 16.0, color: Colors.black)),
      ),
      body: ListView(
        children: <Widget>[]
      ),
    );
  }
}
