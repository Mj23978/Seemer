import 'dart:math' as math;

import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/user/user.dart';

dynamic enumFromString(String? value, dynamic t) {
  return t.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value!.toUpperCase());
}

TextStyle textStyle(
  BuildContext context,
  double size, {
  color = const Color(0xff222333),
  weight = FontWeight.w500,
}) {
  if (["fa", "ar"]
      .contains(EasyLocalization.of(context)!.currentLocale!.languageCode)) {
    return GoogleFonts.lalezar(
        fontSize: size, fontWeight: weight, color: color);
  }
  return GoogleFonts.rubik(fontSize: size, fontWeight: weight, color: color);
}

int gridTileCount(double maxWidth, [size = 135.0]) {
  final tileSize = maxWidth / size;
  final res = tileSize.round() == 0
      ? 1
      : (2.8 >= tileSize && tileSize >= 1.85)
          ? 2
          : tileSize;
  return res.round();
}

Future baseFlash(
  BuildContext context,
  Widget Function(FlashController) builder, {
  bool dismissHorizental = false,
  backgroundColor = Colors.transparent,
  boxShadows: const [BoxShadow(blurRadius: 4)],
}) {
  return showFlash(
    context: context,
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        backgroundColor: backgroundColor,
        boxShadows: boxShadows,
        enableDrag: true,
        brightness: Brightness.light,
        horizontalDismissDirection:
            dismissHorizental ? HorizontalDismissDirection.horizontal : null,
        barrierBlur: 3.0,
        barrierColor: Colors.black38,
        barrierDismissible: true,
        child: builder(controller),
      );
    },
  );
}

Future<void> launchURL(BuildContext context, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("launchUrlError".tr())),
    );
  }
}

String getRandomPicUrl(User user) =>
    'https://getstream.io/random_png/?id=${user.uid}&name=${user.displayName}';

/// Get websiteName from [hostName]
String? getWebsiteName(String hostName) {
  switch (hostName) {
    case 'reddit':
      return 'Reddit';
    case 'youtube':
      return 'Youtube';
    case 'wikipedia':
      return 'Wikipedia';
    case 'twitter':
      return 'Twitter';
    case 'facebook':
      return 'Facebook';
    case 'amazon':
      return 'Amazon';
    case 'yelp':
      return 'Yelp';
    case 'imdb':
      return 'IMDB';
    case 'pinterest':
      return 'Pinterest';
    case 'tripadvisor':
      return 'TripAdvisor';
    case 'instagram':
      return 'Instagram';
    case 'walmart':
      return 'Walmart';
    case 'craigslist':
      return 'Craigslist';
    case 'ebay':
      return 'eBay';
    case 'linkedin':
      return 'LinkedIn';
    case 'google':
      return 'Google';
    case 'apple':
      return 'Apple';
    default:
      return null;
  }
}

/// A method returns a human readable string representing a file _size
String fileSize(dynamic size, [int round = 2]) {
  if (size == null) return 'Size N/A';

  const divider = 1024;
  int _size;
  try {
    _size = int.parse(size.toString());
  } catch (e) {
    throw ArgumentError('Can not parse the size parameter: $e');
  }

  if (_size < divider) {
    return '$_size B';
  }

  if (_size < divider * divider && _size % divider == 0) {
    return '${(_size / divider).toStringAsFixed(0)} KB';
  }

  if (_size < divider * divider) {
    return '${(_size / divider).toStringAsFixed(round)} KB';
  }

  if (_size < divider * divider * divider && _size % divider == 0) {
    return '${(_size / (divider * divider)).toStringAsFixed(0)} MB';
  }

  if (_size < divider * divider * divider) {
    return '${(_size / divider / divider).toStringAsFixed(round)} MB';
  }

  if (_size < divider * divider * divider * divider && _size % divider == 0) {
    return '${(_size / (divider * divider * divider)).toStringAsFixed(0)} GB';
  }

  if (_size < divider * divider * divider * divider) {
    return '${(_size / divider / divider / divider).toStringAsFixed(round)} GB';
  }

  if (_size < divider * divider * divider * divider * divider &&
      _size % divider == 0) {
    final num r = _size / divider / divider / divider / divider;
    return '${r.toStringAsFixed(0)} TB';
  }

  if (_size < divider * divider * divider * divider * divider) {
    final num r = _size / divider / divider / divider / divider;
    return '${r.toStringAsFixed(round)} TB';
  }

  if (_size < divider * divider * divider * divider * divider * divider &&
      _size % divider == 0) {
    final num r = _size / divider / divider / divider / divider / divider;
    return '${r.toStringAsFixed(0)} PB';
  } else {
    final num r = _size / divider / divider / divider / divider / divider;
    return '${r.toStringAsFixed(round)} PB';
  }
}

///
SvgPicture getFileTypeImage(String? type) {

  SvgPicture res(String name) {
    return SvgPicture.asset(
      'assets/svgs/$name.svg',
      width: 24,
      height: 24,
    );
  }

  switch (type) {
    case '7z':
      return res("filetype_7z");
    case 'csv':
      return res("filetype_CSV");
    case 'doc':
      return res("filetype_DOC");
    case 'docx':
      return res("filetype_DOCX");
    case 'html':
      return res("filetype_html");
    case 'md':
      return res("filetype_MD");
    case 'odt':
      return res("filetype_ODT");
    case 'pdf':
      return res("filetype_PDF");
    case 'ppt':
      return res("filetype_PPT");
    case 'pptx':
      return res("filetype_PPTX");
    case 'rar':
      return res("filetype_RAR");
    case 'rtf':
      return res("filetype_RTF");
    case 'tar':
      return res("filetype_TAR");
    case 'txt':
      return res("filetype_TXT");
    case 'xls':
      return res("filetype_XLS");
    case 'xlsx':
      return res("filetype_XLSX");
    case 'zip':
      return res("filetype_ZIP");
    default:
      return res("filetype_Genric");
  }
}

/// Wraps attachment widget with custom shape
Widget wrapAttachmentWidget(
  BuildContext context,
  Widget attachmentWidget,
  ShapeBorder attachmentShape,
  bool reverse,
) =>
    Material(
      clipBehavior: Clip.hardEdge,
      shape: attachmentShape,
      type: MaterialType.transparency,
      child: attachmentWidget,
    );

/// Levenshtein algorithm implementation based on:
/// http://en.wikipedia.org/wiki/Levenshtein_distance#Iterative_with_two_matrix_rows
int levenshtein(String s, String t, {bool caseSensitive = true}) {
  if (!caseSensitive) {
    // ignore: parameter_assignments
    s = s.toLowerCase();
    // ignore: parameter_assignments
    t = t.toLowerCase();
  }
  if (s == t) return 0;
  if (s.isEmpty) return t.length;
  if (t.isEmpty) return s.length;

  final v0 = List<int>.filled(t.length + 1, 0);
  final v1 = List<int>.filled(t.length + 1, 0);

  for (var i = 0; i < t.length + 1; i < i++) {
    v0[i] = i;
  }

  for (var i = 0; i < s.length; i++) {
    v1[0] = i + 1;

    for (var j = 0; j < t.length; j++) {
      final cost = (s[i] == t[j]) ? 0 : 1;
      v1[j + 1] = math.min(v1[j] + 1, math.min(v0[j + 1] + 1, v0[j] + cost));
    }

    for (var j = 0; j < t.length + 1; j++) {
      v0[j] = v1[j];
    }
  }

  return v1[t.length];
}
