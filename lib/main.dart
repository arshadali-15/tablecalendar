import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

import 'package:tablecalendar/tableCalendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home :tableCalendar(),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF100f0f),
        scaffoldBackgroundColor: const Color(0xFF100f0f),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Week view',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/cover.jpg'))),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color(0xFF100f0f),
                  fixedSize: Size.square(10),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: Text(
                  '5', //IconButton
                )),
          ], //<//IconButton
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              child: tableCalendar(),
              height: 500,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(''),
                  color: Colors.green,
                  width: 20,
                  height: 10,
                ),
                Container(
                  child: Text('Delivered'),
                ),
                Container(
                  child: Text(''),
                  color: Colors.red,
                  width: 20,
                  height: 10,
                ),
                Container(
                  child: Text('Not Delivered'),
                ),
                Container(
                  child: Text(''),
                  color: Colors.blue,
                  width: 20,
                  height: 10,
                ),
                Container(
                  child: Text('Up Coming'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, bottom: 10),
              child: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Color(0xFF10f6f6),
                elevation: 4.0,
                label: Text('Add Vacation'),
                splashColor: Colors.lightBlue,
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
              indent: 15,
              endIndent: 15,
            ),
            Container(
              color: Color(0xFF100f0f),
              child: Text(
                  (DateFormat("dd MMMM  ,EEEEE").format(DateTime.now())),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600)),
              margin: EdgeInsets.only(right: 150),
              height: 30,
              padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            ),
            Container(
              child: Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text('My Requests'),
                    backgroundColor: Colors.white,
                    splashColor: Colors.white10,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    backgroundColor: Colors.white,
                    mini: true,
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
