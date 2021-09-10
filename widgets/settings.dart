import 'package:flutter/material.dart';

class option extends StatefulWidget {
  final s;
  final stext;
  final ogtextl;

  const option(
      {Key key, this.s, this.stext, this.ogtextl = 'Error Retrieving Setting'})
      : super(key: key);
  @override
  _optionState createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 300,
            child: FittedBox(
              child: Text(
                widget.ogtextl,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0.0, 3.0),
                        blurRadius: 3.0,
                        color: Colors.black54,
                      ),
                    ],
                    color: Colors.white,
                    fontFamily: 'Schyler'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
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
          Center(
            child: InkWell(
              onTap: widget.s,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff496b68),
                  borderRadius: BorderRadius.circular(20),
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
                child: Center(
                  child: Text(
                    widget.stext,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(0.0, 3.0),
                            blurRadius: 3.0,
                            color: Colors.black54,
                          ),
                        ],
                        color: Colors.white,
                        fontFamily: 'Schyler'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey,
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
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
