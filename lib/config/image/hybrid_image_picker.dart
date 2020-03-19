import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../utils/chat_utils.dart';
import '../../utils/open_settings.dart';

class HybridImagePicker extends StatefulWidget {
  HybridImagePicker(
      {Key key,
      @required this.title,
      @required this.callback,
      this.profile = false})
      : super(key: key);

  final String title;
  final Function callback;
  final bool profile;

  @override
  _HybridImagePickerState createState() => _HybridImagePickerState();
}

class _HybridImagePickerState extends State<HybridImagePicker> {
  File _imageFile;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  void captureImage(ImageSource captureMode) async {
    try {
      var imageFile = await ImagePicker.pickImage(source: captureMode);
      setState(() {
        _imageFile = imageFile;
      });
    } catch (e) {}
  }

  Widget _buildImage() {
    if (_imageFile != null) {
      return Image.file(_imageFile);
    } else {
      return Text('Take an image to start',
          style: TextStyle(
            fontSize: 18.0,
            //  color: ChatUtilsWhite,
          ));
    }
  }

  Future<Null> _cropImage() async {
    double x, y;
    if (widget.profile) {
      x = 1.0;
      y = 1.0;
    }
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: _imageFile.path,
//        aspectRatio: y / x,

//        circleShape: widget.profile,
//        toolbarColor: Colors.white
    );
    setState(() {
      if (croppedFile != null) _imageFile = croppedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChatUtils.getNTPWrappedWidget(WillPopScope(
      child: Scaffold(
        // backgroundColor: ChatUtilsBlack,
        appBar: AppBar(
            title: Text(widget.title),
            // backgroundColor: ChatUtilsBlack,
            actions: _imageFile != null
                ? <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.edit,
                          //  color: ChatUtilsWhite
                        ),
                        disabledColor: Colors.transparent,
                        onPressed: () {
                          _cropImage();
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.check,
                          //  color: ChatUtilsWhite
                        ),
                        onPressed: () {
                          setState(() {
                            isLoading = true;
                          });
                          widget.callback(_imageFile).then((imageUrl) {
                            Navigator.pop(context, imageUrl);
                          });
                        }),
                    SizedBox(
                      width: 8.0,
                    )
                  ]
                : []),
        body: Stack(children: [
          Column(children: [
            Expanded(child: Center(child: _buildImage())),
            _buildButtons()
          ]),
          Positioned(
            child: isLoading
                ? Container(
                    child: Center(
                      child: CircularProgressIndicator(
                          // valueColor:
                          //     AlwaysStoppedAnimation<Color>(ChatUtilsBlue)
                          ),
                    ),
                    // color: ChatUtilsBlack.withOpacity(0.8),
                  )
                : Container(),
          )
        ]),
      ),
      onWillPop: () => Future.value(!isLoading),
    ));
  }

  Widget _buildButtons() {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 60.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildActionButton(
            Key('retake'),
            Icons.photo_library,
            () {
              ChatUtils.checkAndRequestPermission(PermissionGroup.storage).then(
                (res) {
                  if (res) {
                    captureImage(ImageSource.gallery);
                  } else {
                    ChatUtils.showRationale(
                        'Permission to access gallery needed to send photos to your friends.');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OpenSettings(),
                      ),
                    );
                  }
                },
              );
            },
          ),
          _buildActionButton(Key('upload'), Icons.photo_camera, () {
            ChatUtils.checkAndRequestPermission(PermissionGroup.camera)
                .then((res) {
              if (res) {
                captureImage(ImageSource.camera);
              } else {
                ChatUtils.showRationale(
                    'Permission to access camera needed to take photos to share with your friends.');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OpenSettings(),
                  ),
                );
              }
            });
          }),
        ],
      ),
    );
  }

  Widget _buildActionButton(Key key, IconData icon, Function onPressed) {
    return Expanded(
      child: RaisedButton(
          key: key,
          child: Icon(icon, size: 30.0),
          shape: RoundedRectangleBorder(),
          // color: ChatUtilsBlue.withOpacity(0.2),
          // textColor: ChatUtilsWhite,
          onPressed: onPressed),
    );
  }
}
