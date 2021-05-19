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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 80,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(top: size.height / 16),
            child: Text('CONFIRMATION',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    letterSpacing: 2,
                    fontSize: 16.0,
                    color: Colors.white)),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Stack(children: <Widget>[
          Container(
            height: 350.0,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/confirm.jpg'),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 4.0)
                  ],
                  color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 3,
              left: size.width / 3,
            ),
            child: Container(
              height: size.width / 3,
              width: size.width / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(color: Colors.green, width: 2),
                  image: DecorationImage(
                    image: AssetImage('assets/style2.jpg'),
                    fit: BoxFit.fill,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 4.0)
                  ],
                  color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 3,
              left: size.width / 3,
            ),
            height: size.width / 3,
            width: size.width / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.green.withOpacity(0.3)),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 1.78,
              left: size.width / 3,
            ),
            child: Text(
              'Awesome',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 1.58,
              left: size.width / 8,
            ),
            width: size.width / 1.2,
            child: Text(
              'Your booking details has been',
              style: TextStyle(
                fontSize: 22.0,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 1.5,
              left: size.width / 8.5,
            ),
            width: size.width / 1.2,
            child: Text(
              'sent to email jon...@gmail.com',
              style: TextStyle(
                fontSize: 22.0,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height / 1.15,
              left: size.width / 1.5,
            ),
            width: size.width / 3.5,
            child: InkWell(
              onTap: () {},
              child: Container(
                  height: 70.0,
                  width: 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Color.fromRGBO(38, 204, 124, 1)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      )),
                    ],
                  )),
            ),
          ),
        ]));
  }
}
