import 'package:flutter/material.dart';

import '../fullscreencentertext.dart';
import 'package:url_launcher/url_launcher.dart';

String _url = 'https://pub.dev/packages/url_launcher';
final List<String> entrie = <String>['https://www.youtube.com/', 'https://www.google.com'  ];
class quick extends StatefulWidget {
  @override
  _quickState createState() => _quickState();
}

class _quickState extends State<quick> {


  void add(fix){
    setState(() {
      entrie.add(fix);
    });
    print(entrie.length);
  }
  void remove(what){
    setState(() {
      entrie.removeAt(what);
    });
    print(entrie.length);
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ListView.builder(
              key: UniqueKey(),
              padding: const EdgeInsets.all(8),
              itemCount: entrie.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  key: UniqueKey(),
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {await canLaunch(entrie[index]) ? await launch(entrie[index]) : remove(index);},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,boxShadow: [
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
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: FittedBox(child: Text(entrie[index], style: TextStyle(
                            fontWeight: FontWeight.w900,
                            shadows: <Shadow>[

                              Shadow(
                                offset: Offset(0.0, 3.0),
                                blurRadius: 3.0,
                                color: Colors.black54,
                              ),

                            ],


                            fontFamily: 'Schyler'),))),
                      ),
                    ),
                  ],
                );
              }
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [TextFormField(
              onFieldSubmitted: (text) {
                add(text);
              },
              textAlign: TextAlign.center,style: TextStyle(
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
              cursorColor: Colors.black,
              decoration: InputDecoration(
                hintText: "Type in a link, ex. https://www.google.com/gmail/about/#)",
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
            )],
          )
        ],
      )
    );;
  }
}
