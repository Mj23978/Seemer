import 'package:flutter/material.dart';

import '../widgets/images/main_details_image.dart';
import '../widgets/images/second_details_image.dart';

enum ImageTypes {
  MainHome,
  SecondHome,
  MainDetail,
  SecondDetail,
  Trend,
  Coming,
  Favorite,
  ListsDetail,
  PeopleDetail,
  PeopleThumbnail,
  MovieThumbnail,
  Custom,
}

class ImageWidget extends StatelessWidget {
  final ImageTypes imageType;
  final String imageUrl;
  final double height;

  ImageWidget({
    @required this.imageType,
    @required this.imageUrl,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    if (imageType == ImageTypes.MainDetail)
      return MainDetailsImage(imageUrl);
    else if (imageType == ImageTypes.SecondDetail)
      return SecondDetailsImage(
        imageUrl,
        height: height,
      );
    else
      return Container();
  }
}
