import 'package:flutter/material.dart';
String image = 'https://static.vecteezy.com/system/resources/previews/001/308/900/non_2x/happy-family-with-son-vector.jpg';

class imageviewer extends StatefulWidget {
  @override
  _imageviewerState createState() => _imageviewerState();
}

class _imageviewerState extends State<imageviewer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xffa3a3a3),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(image),
                )
              ),
            ),
            TextFormField(
              onFieldSubmitted: (text) {
                setState(() {
                  image = text;

                });
              },
                textAlign: TextAlign.center,
              cursorColor: Colors.black,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 10,
                fontFamily: 'Schyler',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(0.0, 3.0),
                    blurRadius: 3.0,
                    color: Colors.black54,
                  ),

                ],),
              decoration: InputDecoration(
                hintText: "Enter Image Link",
                fillColor: Colors.black,

                focusColor: Colors.black,
                hoverColor: Colors.black,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
