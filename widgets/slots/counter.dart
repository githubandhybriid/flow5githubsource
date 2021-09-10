import 'package:flutter/material.dart';
import 'package:hybriidflow/widgets/fullscreencentertext.dart';



class counter extends StatefulWidget {
  @override
  _counterState createState() => _counterState();
}

class _counterState extends State<counter> {
  void add() {
    setState(() {
      count++;
    });
    print(count);
  }
  void subtract() {
    setState(() {
      count--;
    });
    print(count);
  }
  void reset() {
    setState(() {
      count = 0;
    });
    print(count);
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Spacer(),
        InkWell(
          onTap: add,
          child: Container(
            width: 100,
            height: 100,
            child: Icon(Icons.add, color: Colors.black) ,

            decoration: BoxDecoration(
              color: Color(0xff808080),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.white60
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color:Colors.black.withOpacity(0.5),
                  spreadRadius: -12.0,
                  blurRadius: 12.0,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: subtract,
          child: Container(
            width: 300,
            height: 300,
            child: fstext(text: count, text2: 'Counter',),
            decoration: BoxDecoration(
              color: Color(0xff808080),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.white60
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color:Colors.black.withOpacity(0.5),
                  spreadRadius: -12.0,
                  blurRadius: 12.0,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: subtract,
          child: Container(
            width: 100,
            height: 100,
            child: Icon(Icons.remove, color: Colors.black) ,

            decoration: BoxDecoration(
              color: Color(0xff808080),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.white60
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color:Colors.black.withOpacity(0.5),
                  spreadRadius: -12.0,
                  blurRadius: 12.0,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: reset,
          child: Container(
            width: 300,
            height: 30,
            child: Center(child: Text('Reset', style: TextStyle(fontFamily: 'Schyler'),) ),
            decoration: BoxDecoration(
              color: Color(0xff808080),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.white,
                  Colors.white60
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color:Colors.black.withOpacity(0.5),
                  spreadRadius: -12.0,
                  blurRadius: 12.0,
                ),
              ],
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
