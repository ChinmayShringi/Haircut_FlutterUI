import 'package:flutter/material.dart';
import 'package:thebarber/confirm.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(38, 38, 39, 1),
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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: size.height / 5,
            ),
            Row(
              children: [
                Text(
                  'Where',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 127, 147, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: size.height / 80),
                  child: Text(
                    'Hangorapt',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '11 W 18th St, New York, NY',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 127, 147, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 25,
            ),
            Row(
              children: [
                Text(
                  'When',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 127, 147, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: size.height / 80),
                  child: Text(
                    'Oct 18, 12:30 AM',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 25,
            ),
            Row(
              children: [
                Text(
                  'What',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 127, 147, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: size.height / 80),
                  child: Text(
                    'Beards, Crew Cut',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        color: Colors.white,
                        letterSpacing: 1.0,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '\$65',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 127, 147, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 10,
            ),
            Row(
              children: [
                Container(
                  width: size.width - 50,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ConfirmPage()));
                    },
                    child: Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Color.fromRGBO(38, 203, 24, 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'CONFIRM',
                              style: TextStyle(
                                  letterSpacing: 4,
                                  fontFamily: 'Oswald',
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
