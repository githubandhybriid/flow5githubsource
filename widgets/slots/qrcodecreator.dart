import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class qr extends StatefulWidget {
  @override
  _qrState createState() => _qrState();
}

class _qrState extends State<qr> {
  String data = 'hybrid';
  String quality = '230x230';

  String url =
      'https://api.qrserver.com/v1/create-qr-code/?size=230x230&data=hybriidflow&bgcolor=808080';

  void seturl() {
    setState(() {
      url =
          'https://api.qrserver.com/v1/create-qr-code/?size=$quality&data=$data&bgcolor=808080';
    });
  }

  void highquality() {
    setState(() {
      quality = '1000x1000';
    });
    seturl();
  }

  void lowquality() {
    setState(() {
      quality = '230x230';
    });
    seturl();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () async {
            await canLaunch(url) ? await launch(url) : await launch(url);
          },
          child: Container(
            width: 320,
            height: 320,
            child: Image.network(url),
            decoration: BoxDecoration(
              color: Color(0xff808080),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 4,
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
          height: 50,
        ),
        Container(
          //first
          height: 82,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Text(
                        'Enter a website or text here',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Schyler',
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.0, 3.0),
                              blurRadius: 3.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      onFieldSubmitted: (text) {
                        setState(() {
                          data = text;
                          seturl();
                        });
                      },
                      textAlign: TextAlign.center,
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
                        ],
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText:
                            "example: hybriidflow or https://www.youtube.com/",
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          //first
          height: 82,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Text(
                        'QR Code Quality',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Schyler',
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0.0, 3.0),
                              blurRadius: 3.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
    crossAxisAlignment: CrossAxisAlignment.center, //Cente
                        children: [
                          InkWell(
                            onTap: lowquality,
                            child: Container(
                              width: 130,
                              child: Center(
                                child: Text(
                                  'Average',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Schyler',
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(0.0, 3.0),
                                        blurRadius: 3.0,
                                        color: Colors.black26,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[Colors.white, Colors.white60],
                                ),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
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
                          SizedBox(width: 20,),
                          InkWell(
                            onTap: highquality,
                            child: Container(
                              width: 130,
                              child: Center(
                                child: Text(
                                  'High',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Schyler',
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(0.0, 3.0),
                                        blurRadius: 3.0,
                                        color: Colors.black26,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[Colors.white, Colors.white60],
                                ),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    spreadRadius: -12.0,
                                    blurRadius: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
