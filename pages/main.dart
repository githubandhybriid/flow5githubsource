import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hybriidflow/global/globvabs.dart';
import 'package:hybriidflow/widgets/bottombar.dart';
import 'package:hybriidflow/widgets/exitbutton.dart';
import 'package:hybriidflow/widgets/fullscreencentertext.dart';
import 'package:hybriidflow/widgets/infowidget.dart';
import 'package:hybriidflow/widgets/settingslist.dart';
import 'package:hybriidflow/widgets/slots/api.dart';
import 'package:hybriidflow/widgets/slots/counter.dart';
import 'package:hybriidflow/widgets/slots/def.dart';
import 'package:hybriidflow/widgets/slots/draw.dart';
import 'package:hybriidflow/widgets/slots/fileimageview.dart';
import 'package:hybriidflow/widgets/slots/googletransalate.dart';
import 'package:hybriidflow/widgets/slots/imageview.dart';
import 'package:hybriidflow/widgets/slots/livedate.dart';
import 'package:hybriidflow/widgets/slots/livetime.dart';
import 'package:hybriidflow/widgets/slots/platform.dart';
import 'package:hybriidflow/widgets/slots/qrcodecreator.dart';
import 'package:hybriidflow/widgets/slots/quicklinks.dart';
import 'package:hybriidflow/widgets/slots/randomnumber.dart';
import 'package:hybriidflow/widgets/slots/timeanddate.dart';
import 'package:intl/intl.dart';
import 'package:battery_plus/battery_plus.dart';
import 'package:universal_io/io.dart';
import 'dart:html' show IFrameElement;
// Import package
import 'package:battery_plus/battery_plus.dart';

import 'dart:math' as math;

import 'dart:ui' as ui;

bool gradientan = false;

class mainpage extends StatefulWidget {
  static const String route = '/flow';
  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  final List<Widget> entries = <Widget>[
    qr(),
  ];
  var battery = Battery();
  final List<Widget> slots = <Widget>[
    dict(),
    imageviewer(),
    fimageview(),
    plat(),
    time(),
    date(),
    timeanddate(),
    quick(),
    counter(),
    ggt(),
    randomnum(),
    qr(),
  ];
  final List<String> slotsnames = <String>[
    'Dictionary',
    'Online Image View',
    'Image View',
    'Platform Widget',
    'Time Widget',
    'Date Widget',
    'Time And Date',
    'QuickLinks (BETA)',
    'Counter',
    'Google Transalate',
    'Random Number',
    'QR Code Creator',
  ];
  List<Color> colorList = [
    Color(0xff242424),
    Color(0xff1f2021),
    Color(0xff404040),
    Colors.grey,
  ];

  final _controller = ScrollController();
  final _cr = ScrollController();
  final List<int> colorCodes = <int>[600, 500, 100];
  final _height = 100.0;
  DateTime now = DateTime.now();
  String dynamic_s = 's';
  String graphictf = 'High';
  String anim = 'Off';
  bool on = false;
  int index = 0;
  Color bottomColor = Color(0xff2a2a2a);
  Color topColor = Color(0xff2a2a2a);
  bool settingson = false;
  String gradtotext = 'Off';
  bool anywidgets = true;
  bool smoothergraphics = false;
  void dyn() {
    if (entries.length == 1)
      setState(() {
        dynamic_s = '${entries.length} widget';
        checkifwidgetsexist();
      });
    else
      setState(() {
        dynamic_s = '${entries.length} widgets';
        checkifwidgetsexist();
      });
  }

  void scroll(ani) {
    _controller.animateTo(ani,
        duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);
  }

  void checkifwidgetsexist() {
    if (entries.length == 0)
      setState(() {
        anywidgets = true;
      });
    else
      setState(() {
        anywidgets = false;
      });
  }

  Future<void> ofenonight() async {
    print(await battery.batteryLevel);
  }

  void changegraphics() {
    if (smoothergraphics == true)
      setState(() {
        smoothergraphics = false;
        graphictf = 'High';
      });
    else
      setState(() {
        smoothergraphics = true;
        graphictf = 'Low';
      });
  }

  void changeanimtoonoff() {
    if (gradientan == true)
      setState(() {
        gradtotext = 'On';
      });
    else setState(() {
      gradtotext = 'Off';
    });
  }

  void changeganim() {
    if (gradientan == true)
      setState(() {
        gradientan = false;
        anim = 'Off';
      });
    else
      setState(() {
        gradientan = true;
        anim = 'On';
      });
  }

  void addmenu() {
    if (on == true)
      setState(() {
        on = false;
        anywidgets = true;
        print(smoothergraphics);
      });
    else
      setState(() {
        on = true;
        anywidgets = false;
        print(smoothergraphics);
      });
  }

  void settingmenu() {
    if (settingson == true)
      setState(() {
        settingson = false;
        dyn();
      });
    else
      setState(() {
        settingson = true;
        dyn;
        anywidgets = false;
      });
  }

  void colorchange() {
    setState(() {
      bottomColor = Colors.blue;
    });
  }

  void gettime() {
    setState(() {
      now = DateTime.now();
    });

    Future.delayed(Duration(seconds: 1), () {
      gettime();
    });
  }

  void love(crazy) {
    print(crazy);
  }

  void add() {
    setState(() {
      entries.add(imageviewer());
    });
    dyn();
    print(dynamic_s);
  }

  void delete() {
    setState(() {
      entries.removeLast();
    });
    dyn();
    print(dynamic_s);
  }

  void remove(at) {
    setState(() {
      entries.removeAt(at);
    });
  }

  void initState() {
    super.initState();
    gettime();
    dyn();
    Paint.enableDithering = true;
    // ignore: undefined_prefixed_name
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Stack(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 10),
                width: double.infinity,
                height: double.infinity,
                onEnd: () {
                  setState(() {
                    index = index + 1;
                    // animate the color
                    bottomColor = colorList[index % colorList.length];
                    topColor = colorList[(index + 1) % colorList.length];

                    //// animate the alignment
                    // begin = alignmentList[index % alignmentList.length];
                    // end = alignmentList[(index + 2) % alignmentList.length];
                  });
                },
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                      gradientan == true ? bottomColor : Color(0xff2a2a2a),
                      gradientan == true ? topColor : Color(0xff2a2a2a)
                    ])),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: ListView.builder(
                          controller: _controller,
                          itemCount: entries.length,
                          scrollDirection:
                              MediaQuery.of(context).size.width < 600
                                  ? Axis.vertical
                                  : Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Flex(
                              direction: MediaQuery.of(context).size.width < 600
                                  ? Axis.vertical
                                  : Axis.horizontal,
                              children: [
                                InkWell(
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width < 600
                                            ? 0
                                            : 30,
                                    height:
                                        MediaQuery.of(context).size.width < 600
                                            ? 30
                                            : 0,
                                  ),
                                  onTap: delete,
                                ),
                                GestureDetector(
                                  child: infowidget(
                                    slot: entries[index],
                                    what: () {
                                      remove(index);
                                      print('removed');
                                      dyn();
                                    },
                                    dupl: () {
                                      entries.add(entries[index]);
                                      dyn();
                                    },
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            );
                          }),
                    ),
                    GestureDetector(
                      child: bottombar(
                        ftext:
                            '${DateFormat('h:mm').format(now)} • ${Platform.operatingSystem}',
                        action: () {
                          addmenu();
                        },
                        saction: () {
                          settingmenu();
                          colorchange();
                        },
                      ),
                      //onTap: entries.length < 1 ? add : delete,
                    )
                  ],
                ),
              ),
              Visibility(
                visible: on,
                child: Stack(
                  children: [
                    if (smoothergraphics == true) ...[
                      blackedoutwidget(
                        what: () {
                          addmenu();
                          dyn();
                        },
                      ),
                    ] else ...[
                      blurwidget(
                        what: () {
                          addmenu();
                          dyn();
                        },
                      ),
                    ],
                    RepaintBoundary(
                      child: Listener(
                        onPointerSignal: (ps) {
                          if (ps is PointerScrollEvent) {
                            final newOffset = _cr.offset + ps.scrollDelta.dy;
                            if (ps.scrollDelta.dy.isNegative) {
                              _cr.jumpTo(math.max(0, newOffset));
                            } else {
                              _cr.jumpTo(math.min(
                                  _cr.position.maxScrollExtent, newOffset));
                            }
                          }
                        },
                        child: GridView.builder(
                            controller: _cr,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 3 / 3,
                                    crossAxisSpacing: 30,
                                    mainAxisSpacing: 20),
                            padding: EdgeInsets.all(8),
                            itemCount: slots.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: option(
                                  text: slotsnames[index],
                                  add: () {
                                    entries.add(slots[index]);
                                    print('DONEEE');
                                    setState(() {
                                      on = false;
                                    });
                                    dyn();
                                  },
                                ),
                              );
                            }),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [],
                    )
                  ],
                ),
              ),
              Visibility(
                //settings
                visible: settingson,
                child: Stack(
                  children: [
                    if (smoothergraphics == true) ...[
                      blackedoutwidget(
                        what: () {
                          settingmenu();
                          dyn();
                        },
                      ),
                    ] else ...[
                      blurwidget(
                        what: () {
                          settingmenu();
                          dyn();
                        },
                      ),
                    ],
                    SettingOptions(
                      option1: () {
                        changegraphics();
                      },
                      option2: () {
                        changeganim();
                        changeanimtoonoff();
                      },
                      o1text: graphictf,
                      o2text: gradtotext,
                    ),
                    Column(
                      //exitbutton
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Visibility(
                          child:
                              InkWell(onTap: settingmenu, child: exitbutton()),
                        ),
                        Text('Flow Version ${hflowversion}', style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: smoothergraphics == true ? Colors.white : Colors.black,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.0, 3.0),
                                blurRadius: 3.0,
                                color: smoothergraphics == true ? Colors.black : Colors.black,
                              ),
                            ],
                            fontFamily: 'Schyler'),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Visibility(
              visible: anywidgets,
              child: fstext(
                text: 'No Widgets',
                color: Colors.white,
                text2: 'Press the Plus button to add a widget! • ${hflowversion}',
                color2: Colors.blueGrey,
              ))
        ],
      ),
    );
  }

  _animateToIndex(i) => _controller.animateTo(_height * i,
      duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);
}
//Container(
//                           height: 100,
//                           width: 100,
//                           color: Colors.white,
//                           child: Text(entries.length > 1 ?'There are ${entries.length } Squares' : 'There is 1 Square'),
//                         ),

class option extends StatefulWidget {
  final text;
  final add;

  const option({Key key, this.text, this.add}) : super(key: key);
  @override
  _optionState createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Row(
        children: [
          SizedBox(
            width: 40,

          ),
          SizedBox(
            child: InkWell(
              onTap: widget.add,
              child: Container(
                child: Center(
                  child: Container(
                    child: Center(
                        child: Center(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          widget.text,
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0.0, 3.0),
                                  blurRadius: 3.0,
                                  color: Colors.black54,
                                ),
                              ],
                              fontFamily: 'Schyler'),
                        ),
                      ),
                    )),
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
                        colors: <Color>[Colors.white, Color(0xff636363)],
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class blurwidget extends StatefulWidget {
  final what;

  const blurwidget({Key key, this.what}) : super(key: key);
  @override
  _blurwidgetState createState() => _blurwidgetState();
}

class _blurwidgetState extends State<blurwidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: GestureDetector(
          onTap: widget.what,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}

class blackedoutwidget extends StatefulWidget {
  final what;

  const blackedoutwidget({Key key, this.what}) : super(key: key);
  @override
  _blackedoutwidgetState createState() => _blackedoutwidgetState();
}

class _blackedoutwidgetState extends State<blackedoutwidget> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: GestureDetector(
        onTap: widget.what,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.black, Color(0xff212121)],
            ),
          ),
        ),
      ),
    );
  }
}
