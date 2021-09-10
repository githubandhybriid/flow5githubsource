import 'package:flutter/material.dart';
import 'package:hybriidflow/pages/time.dart';
import 'package:hybriidflow/pages/unknown.dart';
import 'package:page_transition/page_transition.dart';

class bottombar extends StatefulWidget {
  final ftext;
  final action;
  final saction;

  const bottombar({key, this.ftext, this.action, this.saction}) : super(key: key);
  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  Color top = Colors.grey.withOpacity(1);
  Color top2 = Colors.grey.withOpacity(0.5);
  bool cc = true;
  bool cc2 = true;

  void white(PointerEvent details) {
    setState(() {
      top = Colors.grey.withOpacity(1);
    });
  }
  void anim(PointerEvent details) {
    setState(() {
      cc = false;
    });
  }
  void falseanim(PointerEvent details) {
    setState(() {
      cc = true;
    });
  }
  void white2(PointerEvent details) {
    setState(() {
      cc2 = false;
    });
  }
  void blue2(PointerEvent details) {
    setState(() {
      cc2 = true;
    });
  }
  void blue(PointerEvent details) {
    setState(() {
      top = Color(0xffdeffc4);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: anim,
      onExit: falseanim,
      child: AnimatedContainer(
        height: 60,
        width: double.infinity,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: Colors.white,

          boxShadow: [
            BoxShadow(
              color: cc == true ?Colors.grey.withOpacity(1) : Colors.white,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, -4), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    onHover: white2,
                    onExit: blue2,
                    child: InkWell(

                      child: AnimatedContainer(
                        width: 50,
                        height: 50,
                        duration: Duration(milliseconds: 300),
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
                               cc2 == true ? Color(0xFF4B4B4B) : Colors.green,
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
                      onTap: widget.action,
                    ),
                  ),
                  MouseRegion(
                    onHover: white2,
                    onExit: blue2,
                    child: InkWell(
                      onTap: widget.saction,


                      child: AnimatedContainer(
                        width: 50,
                        height: 50,
                        duration: Duration(milliseconds: 300),
                        child: Icon(Icons.settings, color: Colors.black) ,

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
                              cc2 == true ? Color(0xFF4B4B4B) : Colors.green,
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
                  ),
                ],
              ),
            ),
            Center(
                child: InkWell(
                  onTap: () {Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: timepage()));},
                  child: Text(
              widget.ftext,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontFamily: 'Schyler',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 3.0),
                      blurRadius: 3.0,
                      color: Colors.black54,
                    ),
                  ],
              ),
            ),
                )),
          ],
        ),
      ),
    );
  }
}
