import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../templates/home_template_view.dart';

class SplashView extends StatefulWidget {

  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder, 'assets/icons/signup.svg'),
      null,
    );
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder, 'assets/icons/chat.svg'),
      null,
    );
    precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoderBuilder, 'assets/icons/login.svg'),
      null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return SplashScreenView(
    //       navigateRoute: HomeTemplateView(),
    //       duration: 5500,
    //       imageSrc: "assets/images/icon_new.png",
    //       text: "Seemer",
    //       textType: TextType.ColorizeAnimationText,
    //       textStyle: TextStyle(fontSize: 40.0, fontFamily: 'Courgette'),
    //       colors: [
    //         Colors.red,
    //         Colors.black
    //       ],
    //       backgroundColor: Colors.white,
        
    // );
  }
}
