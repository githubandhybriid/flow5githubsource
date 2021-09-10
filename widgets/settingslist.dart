import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hybriidflow/widgets/infowidget.dart';
import 'package:hybriidflow/widgets/settings.dart';
import 'dart:math' as math;

class SettingOptions extends StatefulWidget {
  final option1;
  final option2;
  final o1text;
  final o2text;
  final effectant;

  const SettingOptions({Key key, this.option1, this.o1text, this.o2text, this.effectant, this.option2})
      : super(key: key);
  @override
  _SettingOptionsState createState() => _SettingOptionsState();
}

class _SettingOptionsState extends State<SettingOptions> {
  final _cr = ScrollController();
  double _currentSliderValue = 500;
  void cval(wtc){

  }
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (ps) {
        if (ps is PointerScrollEvent) {
          final newOffset = _cr.offset + ps.scrollDelta.dy;
          if (ps.scrollDelta.dy.isNegative) {
            _cr.jumpTo(math.max(0, newOffset));
          } else {
            _cr.jumpTo(math.min(_cr.position.maxScrollExtent, newOffset));
          }
        }
      },
      child: ListView(
        controller: _cr,
        children: <Widget>[
          Align(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                option(
                  s: widget.option1,
                  stext: widget.o1text,
                  ogtextl: 'Graphic Quality',
                ),
                SizedBox(
                  height: 100,
                ),
                option(ogtextl: 'Animated Backdrop (Beta)', stext: widget.o2text,s: widget.option2,),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 500,
                  height: 90,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Widget Size (Not For Mobile)',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 20,

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
                        SliderTheme(
                          data: SliderThemeData().copyWith(),
                          child: Slider(
                            value: settingsize,
                            activeColor: Colors.black,
                            inactiveColor: Colors.white,
                            min: 400,
                            max: 800,
                            divisions: 5,
                            label: settingsize.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                settingsize = value;

                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
