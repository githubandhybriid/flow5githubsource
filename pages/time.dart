// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hybriidflow/widgets/bottombar.dart';
import 'package:hybriidflow/widgets/fullscreencentertext.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:async';
import 'main.dart';
import 'package:intl/intl.dart';
import 'package:universal_io/io.dart';

class timepage extends StatefulWidget {
  static const String route = '/time';
  @override
  _timepageState createState() => _timepageState();
}

class _timepageState extends State<timepage> {

  String hybriidtext = "Wrong Link?";
  DateTime now = DateTime.now();



  void gettime() {
    setState(() {
      now = DateTime.now();
    });


    Future.delayed(Duration(seconds: 1), () {
      gettime();
    });
  }

  void initState() {
    super.initState();
    gettime();
    // ignore: undefined_prefixed_name

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the overview page using a named route.
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: mainpage()));
      },
      child: Scaffold(
        backgroundColor: Color(0xFF454545),
        body: Stack(
          children: [
            fstext(
              text: ('${DateFormat('h:mm').format(now)}:${DateFormat('s').format(now)}'),
              text2: ('${DateFormat('yMMMMd').format(now)}') ,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [GestureDetector(

                child: Container(
                  child: Text('', style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      fontFamily: 'Schyler'),),
                ),
              )],
            )
          ],
        ),
      ),
    );
  }
}
