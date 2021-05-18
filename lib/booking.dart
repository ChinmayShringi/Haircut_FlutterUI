import 'package:flutter/material.dart';


class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('BOOKING',
            style: TextStyle(
                fontFamily: 'FirSans', fontSize: 16.0, color: Colors.black)),
      ),
      body: ListView(
        children: <Widget>[]
      ),
    );
  }
}
