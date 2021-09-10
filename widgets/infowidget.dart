import 'package:flutter/material.dart';

// import 'dart:io' if (dart.library.html) 'dart:ui' as ui;
import 'dart:ui' as ui;
import 'dart:html';

import 'package:hybriidflow/widgets/fullscreencentertext.dart';
import 'package:hybriidflow/widgets/slots/livedate.dart';
import 'package:hybriidflow/widgets/slots/livetime.dart';

// ignore: camel_case_types
// ignore: undefined_prefixed_name
String src = '';
double settingsize = 400;

class infowidget extends StatefulWidget {
  final slot;
  final what;
  final dupl;

  const infowidget({Key key, this.slot, this.what, this.dupl})
      : super(key: key);

  @override
  _infowidgetState createState() => _infowidgetState();
}

class _infowidgetState extends State<infowidget> {
  int test = 3;
  String ss = src;

  void redo() {
    //Note: IMPLEMENT WEB IN ITS ON FILE NOW!

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'hello-world-html',
            (int viewId) => IFrameElement()
          ..width = '200'
          ..height = '260'
          ..src = src
          ..style.border = 'none');
  }


  void initState() {
    super.initState();
    print('STOP INIT STATING ME');

    redo();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              width: settingsize,
              height: 800,
              child: widget.slot,
              decoration: BoxDecoration(
                color: Color(0xff808080),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.black,
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
          ],
        ),
        Container(
          height: 100,
          width: 30,
          child: Column(
            children: [
              InkWell(
                child: Container(
                  width: 30,
                  height: 30,
                  child: Icon(Icons.highlight_remove, color: Color(0xffa30608)),
                  decoration: BoxDecoration(
                      color: Color(0xffff5952),
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
                      borderRadius: BorderRadius.circular(30)),
                ),
                onTap: widget.what,
              ),
              InkWell(
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.control_point_duplicate,
                      color: Color(0xff815a00)),
                  decoration: BoxDecoration(
                      color: Color(0xffe7c029),
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
                      borderRadius: BorderRadius.circular(30)),
                ),
                onTap: widget.dupl,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class testtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('1st option');
  }
}

class testtext2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('2nd option');
  }
}

class testtext3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('3rd option');
  }
}

class seconds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('3rd option');
  }
}

class error extends StatefulWidget {
  final wtd;

  const error({Key key, this.wtd}) : super(key: key);
  @override
  _errorState createState() => _errorState();
}

class _errorState extends State<error> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
              width: 1000,
              height: 500,
              child: Stack(children: [
                Text(
                  'Loading ${src}',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 3.0),
                        blurRadius: 3.0,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                HtmlElementView(viewType: 'hello-world-html'),
                Column(children: [],),
              ])),
        ),Column(
          mainAxisSize: MainAxisSize.max,
          children: [


            TextFormField(
              onFieldSubmitted: (text) {
                setState(() {
                  src = text;
                });
                // ignore: undefined_prefixed_name
                ui.platformViewRegistry.registerViewFactory(
                    'hello-world-html',
                        (int viewId) => IFrameElement()
                      ..width = '200'
                      ..height = '260'
                      ..src = 'https://notes.io/'
                      ..style.border = 'none');

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
                ],
              ),
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
      ],
    );
  }
}
