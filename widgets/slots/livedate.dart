import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../fullscreencentertext.dart';

class date extends StatefulWidget {
  const date({key}) : super(key: key);

  @override
  _dateState createState() => _dateState();
}

class _dateState extends State<date> {
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
    return Container(
      child: fstext(
        text: ('${DateFormat('yMMMMd').format(now)}'),
        text2: ('${DateFormat('E').format(now)}') ,
        textsize: 40,
      ),
    );
  }
}
