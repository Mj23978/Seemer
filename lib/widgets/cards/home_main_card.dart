import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../network/helpers/image_size.dart';
import '../../network/helpers/image_url.dart';

class HomeMainCard extends StatelessWidget {
  final double pageWidth;
  final double pageHeight;
  final Color color;

  HomeMainCard({
    @required this.pageHeight,
    @required this.pageWidth,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      key: Key("Rick and Morty"),
      builder: (context, size) {
        print(ImageUrl.getUrl(
            "/mzzHr6g1yvZ05Mc7hNj3tUdy2bM.jpg", ImageSize.w200));
        final double boxWidth = pageWidth * 0.7;
        final double boxHeight = pageHeight * 0.29;
        return Container(
          margin: EdgeInsets.only(left: pageWidth / 20),
          child: Stack(
            children: <Widget>[
              Container(
                width: boxWidth * 1.15,
                height: boxHeight * 1.2,
                margin: EdgeInsets.symmetric(
                  vertical: pageHeight / 30,
                  horizontal: pageWidth / 20,
                ),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(pageWidth / 20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(pageWidth / 110, pageHeight / 155),
                        color: Colors.blueGrey,
                        blurRadius: pageWidth / 70),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: (boxWidth * 0.43),
                    right: pageWidth / 45,
                    top: pageHeight / 40,
                    bottom: pageHeight / 40,
                  ),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Rick and Morty",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: pageWidth / 22),
                        ),
                      ),
                      SizedBox(
                        height: pageHeight / 65,
                      ),
                      Center(
                        child: Text(
                          "its really long text that has been written for not movie or TV Show description its really long text that has been written for not movie or TV Show description ...",
                          style: TextStyle(fontSize: pageWidth / 30),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-pageWidth / 20, -pageHeight / 25),
                child: Container(
                  width: boxWidth * 0.43,
                  height: boxHeight * 0.85,
                  margin: EdgeInsets.symmetric(
                    horizontal: pageWidth / 15,
                    vertical: pageHeight / 23,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(ImageUrl.getUrl(
                          "/qJdfO3ahgAMf2rcmhoqngjBBZW1.jpg", ImageSize.w200)),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
