import 'package:flutter/material.dart';
import 'package:thebarber/booking.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedDate = 18;
  var selectedBarber = 'Jonathan';
  var selectedBarberPhoto = 'assets/style1.jpg';
  var selectedTime = '12:30';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 16),
          child: Text('BOOKING',
              style: TextStyle(
                  fontFamily: 'Oswald', fontSize: 16.0, color: Colors.black)),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 120.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.01),
                      spreadRadius: 4.0)
                ], color: Colors.white),
              ),
              Positioned(
                top: 30.0,
                left: 15.0,
                right: 15.0,
                child: Container(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 20.0),
                      getDate(18, 'Tue'),
                      SizedBox(width: 30.0),
                      getDate(19, 'Wed'),
                      SizedBox(width: 30.0),
                      getDate(20, 'Thu'),
                      SizedBox(width: 30.0),
                      getDate(21, 'Fri'),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(
              'Hagorapt',
              style: TextStyle(
                  fontFamily: 'Oswald',
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  color: Colors.black.withOpacity(01),
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            children: <Widget>[
              SizedBox(width: 15.0),
              getService('Beards', 50),
              getService('Crew Cut', 15)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          Container(
              height: 200.0,
              child: ListView(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getBarber('assets/style2.jpg', 'Anton'),
                  SizedBox(width: 25.0),
                  getBarber('assets/style1.jpg', 'Jonathan'),
                  SizedBox(width: 25.0),
                  getBarber('assets/style3.jpeg', 'Jim'),
                ],
              )),
          SizedBox(height: MediaQuery.of(context).size.height / 15),
          Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getTime('11:00'),
                SizedBox(width: 25.0),
                getTime('12:30'),
                SizedBox(width: 25.0),
                getTime('13:30'),
                SizedBox(width: 25.0),
                getTime('15:00'),
                SizedBox(width: 25.0)
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 14),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BookingPage(
                            time: this.selectedTime,
                            date: this.selectedDate.toString(),
                            cut: this.selectedBarberPhoto)));
              },
              child: Container(
                  height: 70.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.black),
                  child: Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 2.5),
                          child: Text(
                            'BOOK',
                            style: TextStyle(
                                letterSpacing: 3,
                                fontFamily: 'Oswald',
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          )),
                      SizedBox(width: MediaQuery.of(context).size.width / 3.8),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(48, 48, 48, 1)),
                          child: Text(
                            "\$65",
                            style: TextStyle(
                                fontFamily: 'Oswald',
                                letterSpacing: 2.0,
                                fontSize: 17.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }

  Color switchTimeColor(time) {
    if (time == selectedTime) {
      return Colors.black.withOpacity(1);
    } else {
      return Colors.grey.withOpacity(0.1);
    }
  }

  Color switchTimeContentColor(time) {
    if (time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  Widget getTime(time) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchTimeColor(time)),
      height: 50.0,
      width: 75.0,
      child: InkWell(
        onTap: () {
          selectTime(time);
        },
        child: Center(
          child: Text(
            time,
            style: TextStyle(
                fontFamily: 'Oswald',
                letterSpacing: 1,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: switchTimeContentColor(time)),
          ),
        ),
      ),
    );
  }

  Widget getBarber(String imgPath, String name) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 160.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            InkWell(
              onTap: () {
                this.selectedBarberPhoto = imgPath;
                selectBarber(name);
              },
              child: Container(
                height: 160.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: getSelectedBarber(name)),
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          name,
          style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w200),
        )
      ],
    );
  }

  selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  Color getSelectedBarber(name) {
    if (name == selectedBarber) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  Widget getService(String name, int price) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontSize: 17.0, color: Colors.black),
          ),
          SizedBox(width: 5.0),
          Text(
            '\$' + price.toString(),
            style: TextStyle(fontSize: 17.0, color: Colors.grey),
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget getDate(int date, String day) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: switchColor(date)),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () {
          selectDate(date);
        },
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 7.0),
              Text(
                date.toString(),
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor(date)),
              ),
              Text(
                day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor(date)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color switchColor(date) {
    if (date == selectedDate) {
      return Colors.black.withOpacity(1);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (date == selectedDate) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }
}
