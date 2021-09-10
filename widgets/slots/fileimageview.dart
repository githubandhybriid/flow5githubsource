import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:image_picker_web/image_picker_web.dart';
import 'package:path/path.dart' as Path;

class fimageview extends StatefulWidget {
  @override
  _fimageviewState createState() => _fimageviewState();
}

class _fimageviewState extends State<fimageview> {
  final _pickedImages = <Image>[];
  final _pickedVideos = <dynamic>[];

  Image _imageInfo;

  Future<void> _pickImage() async {
    Image fromPicker =
    await ImagePickerWeb.getImage(outputType: ImageType.widget);

    if (fromPicker != null) {
      setState(() {
        _imageInfo = fromPicker;
      });
      print(_imageInfo);
    }
  }


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

                  )
              ),
            ),
            InkWell(
              onTap: _pickImage,
              child: Container(width: 10,
              height: 12,
              color: Colors.black,),
            )
          ],

        ),
      ),
    );
  }
}
