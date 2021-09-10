import 'package:flutter/material.dart';
import 'dart:math';

import '../fullscreencentertext.dart';

class randomnum extends StatefulWidget {
  @override
  _randomnumState createState() => _randomnumState();
}

class _randomnumState extends State<randomnum> {



  int minimum = 1;
  int maximum = 100;
  int randomNumber = 0;
  

  addmin(){
    setState(() {
      minimum++;
    });
  }
  submin(){
    setState(() {
      minimum--;
    });
  }
  addmax(){
    setState(() {
      maximum++;
    });
  }
  submax(){
    setState(() {
      maximum--;
    });
  }

  makerandom(){
    setState(() {
      Random random = new Random();
      randomNumber = random.nextInt(maximum) + minimum;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Container(
            width: 300,
            height: 300,
            child: fstext(
              text: randomNumber,
              text2: 'Random Number from ${minimum} to ${maximum}',
              textsize2: 20,
            ),
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
                colors: <Color>[Colors.white, Colors.white60],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: -12.0,
                  blurRadius: 12.0,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        SizedBox(
          height: 20,
        ),
        Text('Maximum Number', style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            shadows: <Shadow>[

              Shadow(
                offset: Offset(0.0, 3.0),
                blurRadius: 3.0,
                color: Colors.black54,
              ),

            ],
            fontSize: 20,
            fontFamily: 'Schyler'),),
        SizedBox(
          height: 5,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(

                child: Container(
                  width: 40,
                  child: Icon(Icons.remove, color: Colors.black) ,
                  height: 50,
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
                      colors: <Color>[Colors.white, Colors.white60],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: -12.0,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                ),
                onTap: submax,
              ),
              Container(
                width: 40,
                height: 50,
                child: Center(child: Text(maximum.toString(),  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    shadows: <Shadow>[

                      Shadow(
                        offset: Offset(0.0, 3.0),
                        blurRadius: 3.0,
                        color: Colors.black54,
                      ),

                    ],

                    fontFamily: 'Schyler'),)),
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
                    colors: <Color>[Colors.white, Colors.white60],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: -12.0,
                      blurRadius: 12.0,
                    ),
                  ],
                ),
              ),
              InkWell(

                child: Container(
                  width: 40,
                  child: Icon(Icons.add, color: Colors.black) ,
                  height: 50,
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
                      colors: <Color>[Colors.white, Colors.white60],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: -12.0,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                ),
                onTap: addmax,
              ),

            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),

        InkWell(
          onTap: makerandom,
          child: Center(
            child: Container(
              width: 300,
              height: 50,
              child: Center(child: Text('Pick Number!',  style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  shadows: <Shadow>[

                    Shadow(
                      offset: Offset(0.0, 3.0),
                      blurRadius: 3.0,
                      color: Colors.black54,
                    ),

                  ],

                  fontFamily: 'Schyler'),)),
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
                  colors: <Color>[Colors.white, Colors.white60],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                  ),
                ],
              ),
            ),
          ),
        )



      ],
    );
  }
}
