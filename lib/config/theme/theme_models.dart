import 'package:flutter/material.dart';

class ColorTheme {
  /// Initialise with light theme
  ColorTheme.light({
    this.textHighEmphasis = const Color(0xff000000),
    this.textLowEmphasis = const Color(0xff7a7a7a),
    this.disabled = const Color(0xffdbdbdb),
    this.borders = const Color(0xffecebeb),
    this.inputBg = const Color(0xfff2f2f2),
    this.appBg = const Color(0xfffcfcfc),
    this.barsBg = const Color(0xffffffff),
    this.linkBg = const Color(0xffe9f2ff),
    this.accentPrimary = const Color(0xff005FFF),
    this.accentError = const Color(0xffFF3842),
    this.accentInfo = const Color(0xff20E070),
    this.highlight = const Color(0xfffbf4dd),
    this.overlay = const Color.fromRGBO(0, 0, 0, 0.2),
    this.overlayDark = const Color.fromRGBO(0, 0, 0, 0.6),
    this.bgGradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xfff7f7f7), Color(0xfffcfcfc)],
      stops: [0, 1],
    ),
    this.borderTop = const Effect(
      sigmaX: 0,
      sigmaY: -1,
      color: Color(0xff000000),
      blur: 0,
      alpha: 0.08,
    ),
    this.borderBottom = const Effect(
      sigmaX: 0,
      sigmaY: 1,
      color: Color(0xff000000),
      blur: 0,
      alpha: 0.08,
    ),
    this.shadowIconButton = const Effect(
      sigmaX: 0,
      sigmaY: 2,
      color: Color(0xff000000),
      alpha: 0.5,
      blur: 4,
    ),
    this.modalShadow = const Effect(
      sigmaX: 0,
      sigmaY: 0,
      color: Color(0xff000000),
      alpha: 1,
      blur: 8,
    ),
  }) : brightness = Brightness.light;

  /// Initialise with dark theme
  ColorTheme.dark({
    this.textHighEmphasis = const Color(0xffffffff),
    this.textLowEmphasis = const Color(0xff7a7a7a),
    this.disabled = const Color(0xff2d2f2f),
    this.borders = const Color(0xff1c1e22),
    this.inputBg = const Color(0xff13151b),
    this.appBg = const Color(0xff070A0D),
    this.barsBg = const Color(0xff101418),
    this.linkBg = const Color(0xff00193D),
    this.accentPrimary = const Color(0xff005FFF),
    this.accentError = const Color(0xffFF3742),
    this.accentInfo = const Color(0xff20E070),
    this.borderTop = const Effect(
      sigmaX: 0,
      sigmaY: -1,
      color: Color(0xff141924),
      blur: 0,
    ),
    this.borderBottom = const Effect(
      sigmaX: 0,
      sigmaY: 1,
      color: Color(0xff141924),
      blur: 0,
      alpha: 1,
    ),
    this.shadowIconButton = const Effect(
      sigmaX: 0,
      sigmaY: 2,
      color: Color(0xff000000),
      alpha: 0.5,
      blur: 4,
    ),
    this.modalShadow = const Effect(
      sigmaX: 0,
      sigmaY: 0,
      color: Color(0xff000000),
      alpha: 1,
      blur: 8,
    ),
    this.highlight = const Color(0xff302d22),
    this.overlay = const Color.fromRGBO(0, 0, 0, 0.4),
    this.overlayDark = const Color.fromRGBO(255, 255, 255, 0.6),
    this.bgGradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff101214),
        Color(0xff070a0d),
      ],
      stops: [0, 1],
    ),
  }) : brightness = Brightness.dark;

  final Color textHighEmphasis;
  final Color textLowEmphasis;
  final Color disabled;
  final Color borders;
  final Color inputBg;
  final Color appBg;
  final Color barsBg;
  final Color linkBg;
  final Color accentPrimary;
  final Color accentError;
  final Color accentInfo;
  final Effect borderTop;
  final Effect borderBottom;
  final Effect shadowIconButton;
  final Effect modalShadow;
  final Color highlight;
  final Color overlay;
  final Color overlayDark;
  final Gradient bgGradient;
  final Brightness brightness;

  ColorTheme copyWith({
    Brightness brightness = Brightness.light,
    Color? textHighEmphasis,
    Color? textLowEmphasis,
    Color? disabled,
    Color? borders,
    Color? inputBg,
    Color? appBg,
    Color? barsBg,
    Color? linkBg,
    Color? accentPrimary,
    Color? accentError,
    Color? accentInfo,
    Effect? borderTop,
    Effect? borderBottom,
    Effect? shadowIconButton,
    Effect? modalShadow,
    Color? highlight,
    Color? overlay,
    Color? overlayDark,
    Gradient? bgGradient,
  }) =>
      brightness == Brightness.light
          ? ColorTheme.light(
              textHighEmphasis: textHighEmphasis ?? this.textHighEmphasis,
              textLowEmphasis: textLowEmphasis ?? this.textLowEmphasis,
              disabled: disabled ?? this.disabled,
              borders: borders ?? this.borders,
              inputBg: inputBg ?? this.inputBg,
              appBg: appBg ?? this.appBg,
              barsBg: barsBg ?? this.barsBg,
              linkBg: linkBg ?? this.linkBg,
              accentPrimary: accentPrimary ?? this.accentPrimary,
              accentError: accentError ?? this.accentError,
              accentInfo: accentInfo ?? this.accentInfo,
              borderTop: borderTop ?? this.borderTop,
              borderBottom: borderBottom ?? this.borderBottom,
              shadowIconButton: shadowIconButton ?? this.shadowIconButton,
              modalShadow: modalShadow ?? this.modalShadow,
              highlight: highlight ?? this.highlight,
              overlay: overlay ?? this.overlay,
              overlayDark: overlayDark ?? this.overlayDark,
              bgGradient: bgGradient ?? this.bgGradient,
            )
          : ColorTheme.dark(
              textHighEmphasis: textHighEmphasis ?? this.textHighEmphasis,
              textLowEmphasis: textLowEmphasis ?? this.textLowEmphasis,
              disabled: disabled ?? this.disabled,
              borders: borders ?? this.borders,
              inputBg: inputBg ?? this.inputBg,
              appBg: appBg ?? this.appBg,
              barsBg: barsBg ?? this.barsBg,
              linkBg: linkBg ?? this.linkBg,
              accentPrimary: accentPrimary ?? this.accentPrimary,
              accentError: accentError ?? this.accentError,
              accentInfo: accentInfo ?? this.accentInfo,
              borderTop: borderTop ?? this.borderTop,
              borderBottom: borderBottom ?? this.borderBottom,
              shadowIconButton: shadowIconButton ?? this.shadowIconButton,
              modalShadow: modalShadow ?? this.modalShadow,
              highlight: highlight ?? this.highlight,
              overlay: overlay ?? this.overlay,
              overlayDark: overlayDark ?? this.overlayDark,
              bgGradient: bgGradient ?? this.bgGradient,
            );
  ColorTheme merge(ColorTheme? other) {
    if (other == null) return this;
    return copyWith(
      textHighEmphasis: other.textHighEmphasis,
      textLowEmphasis: other.textLowEmphasis,
      disabled: other.disabled,
      borders: other.borders,
      inputBg: other.inputBg,
      appBg: other.appBg,
      barsBg: other.barsBg,
      linkBg: other.linkBg,
      accentPrimary: other.accentPrimary,
      accentError: other.accentError,
      accentInfo: other.accentInfo,
      highlight: other.highlight,
      overlay: other.overlay,
      overlayDark: other.overlayDark,
      bgGradient: other.bgGradient,
      borderTop: other.borderTop,
      borderBottom: other.borderBottom,
      shadowIconButton: other.shadowIconButton,
      modalShadow: other.modalShadow,
    );
  }
}

class Effect {
  /// Constructor for creating [Effect]
  const Effect({
    this.sigmaX,
    this.sigmaY,
    this.color,
    this.alpha,
    this.blur,
  });

  final double? sigmaX;
  final double? sigmaY;
  final Color? color;
  final double? alpha;
  final double? blur;

  Effect copyWith({
    double? sigmaX,
    double? sigmaY,
    Color? color,
    double? alpha,
    double? blur,
  }) =>
      Effect(
        sigmaX: sigmaX ?? this.sigmaX,
        sigmaY: sigmaY ?? this.sigmaY,
        color: color ?? this.color,
        alpha: color as double? ?? this.alpha,
        blur: blur ?? this.blur,
      );
}

class MessageThemeData {
  /// Creates a [MessageThemeData].
  const MessageThemeData({
    this.repliesStyle,
    this.messageTextStyle,
    this.messageAuthorStyle,
    this.messageLinksStyle,
    this.messageBackgroundColor,
    this.messageBorderColor,
    this.reactionsBackgroundColor,
    this.reactionsBorderColor,
    this.reactionsMaskColor,
    this.createdAtStyle,
    this.linkBackgroundColor,
  });

  final TextStyle? messageTextStyle;
  final TextStyle? messageAuthorStyle;
  final TextStyle? messageLinksStyle;
  final TextStyle? createdAtStyle;
  final TextStyle? repliesStyle;
  final Color? messageBackgroundColor;
  final Color? messageBorderColor;
  final Color? reactionsBackgroundColor;
  final Color? reactionsBorderColor;
  final Color? reactionsMaskColor;
  final Color? linkBackgroundColor;

  MessageThemeData copyWith({
    TextStyle? messageTextStyle,
    TextStyle? messageAuthorStyle,
    TextStyle? messageLinksStyle,
    TextStyle? createdAtStyle,
    TextStyle? repliesStyle,
    Color? messageBackgroundColor,
    Color? messageBorderColor,
    Color? reactionsBackgroundColor,
    Color? reactionsBorderColor,
    Color? reactionsMaskColor,
    Color? linkBackgroundColor,
  }) =>
      MessageThemeData(
        messageTextStyle: messageTextStyle ?? this.messageTextStyle,
        messageAuthorStyle: messageAuthorStyle ?? this.messageAuthorStyle,
        messageLinksStyle: messageLinksStyle ?? this.messageLinksStyle,
        createdAtStyle: createdAtStyle ?? this.createdAtStyle,
        messageBackgroundColor:
            messageBackgroundColor ?? this.messageBackgroundColor,
        messageBorderColor: messageBorderColor ?? this.messageBorderColor,
        repliesStyle: repliesStyle ?? this.repliesStyle,
        reactionsBackgroundColor:
            reactionsBackgroundColor ?? this.reactionsBackgroundColor,
        reactionsBorderColor: reactionsBorderColor ?? this.reactionsBorderColor,
        reactionsMaskColor: reactionsMaskColor ?? this.reactionsMaskColor,
        linkBackgroundColor: linkBackgroundColor ?? this.linkBackgroundColor,
      );

  MessageThemeData merge(MessageThemeData? other) {
    if (other == null) return this;
    return copyWith(
      messageTextStyle: messageTextStyle?.merge(other.messageTextStyle) ??
          other.messageTextStyle,
      messageAuthorStyle: messageAuthorStyle?.merge(other.messageAuthorStyle) ??
          other.messageAuthorStyle,
      messageLinksStyle: messageLinksStyle?.merge(other.messageLinksStyle) ??
          other.messageLinksStyle,
      createdAtStyle:
          createdAtStyle?.merge(other.createdAtStyle) ?? other.createdAtStyle,
      repliesStyle:
          repliesStyle?.merge(other.repliesStyle) ?? other.repliesStyle,
      messageBackgroundColor: other.messageBackgroundColor,
      messageBorderColor: other.messageBorderColor,
      reactionsBackgroundColor: other.reactionsBackgroundColor,
      reactionsBorderColor: other.reactionsBorderColor,
      reactionsMaskColor: other.reactionsMaskColor,
      linkBackgroundColor: other.linkBackgroundColor,
    );
  }
}

class MessageInputThemeData {
  /// Creates a [MessageInputThemeData].
  const MessageInputThemeData({
    this.sendAnimationDuration,
    this.actionButtonColor,
    this.sendButtonColor,
    this.actionButtonIdleColor,
    this.sendButtonIdleColor,
    this.inputBackgroundColor,
    this.inputTextStyle,
    this.inputDecoration,
    this.activeBorderGradient,
    this.idleBorderGradient,
    this.borderRadius,
    this.expandButtonColor,
  });

  final Duration? sendAnimationDuration;
  final Color? sendButtonColor;
  final Color? actionButtonColor;
  final Color? sendButtonIdleColor;
  final Color? actionButtonIdleColor;
  final Color? expandButtonColor;
  final Color? inputBackgroundColor;
  final TextStyle? inputTextStyle;
  final InputDecoration? inputDecoration;
  final Gradient? idleBorderGradient;
  final Gradient? activeBorderGradient;
  final BorderRadius? borderRadius;

  MessageInputThemeData copyWith({
    Duration? sendAnimationDuration,
    Color? inputBackgroundColor,
    Color? actionButtonColor,
    Color? sendButtonColor,
    Color? actionButtonIdleColor,
    Color? sendButtonIdleColor,
    Color? expandButtonColor,
    TextStyle? inputTextStyle,
    InputDecoration? inputDecoration,
    Gradient? activeBorderGradient,
    Gradient? idleBorderGradient,
    BorderRadius? borderRadius,
  }) =>
      MessageInputThemeData(
        sendAnimationDuration:
            sendAnimationDuration ?? this.sendAnimationDuration,
        inputBackgroundColor: inputBackgroundColor ?? this.inputBackgroundColor,
        actionButtonColor: actionButtonColor ?? this.actionButtonColor,
        sendButtonColor: sendButtonColor ?? this.sendButtonColor,
        actionButtonIdleColor:
            actionButtonIdleColor ?? this.actionButtonIdleColor,
        expandButtonColor: expandButtonColor ?? this.expandButtonColor,
        inputTextStyle: inputTextStyle ?? this.inputTextStyle,
        sendButtonIdleColor: sendButtonIdleColor ?? this.sendButtonIdleColor,
        inputDecoration: inputDecoration ?? this.inputDecoration,
        activeBorderGradient: activeBorderGradient ?? this.activeBorderGradient,
        idleBorderGradient: idleBorderGradient ?? this.idleBorderGradient,
        borderRadius: borderRadius ?? this.borderRadius,
      );

  MessageInputThemeData merge(MessageInputThemeData? other) {
    if (other == null) return this;
    return copyWith(
      sendAnimationDuration: other.sendAnimationDuration,
      inputBackgroundColor: other.inputBackgroundColor,
      actionButtonColor: other.actionButtonColor,
      actionButtonIdleColor: other.actionButtonIdleColor,
      sendButtonColor: other.sendButtonColor,
      sendButtonIdleColor: other.sendButtonIdleColor,
      inputTextStyle:
          inputTextStyle?.merge(other.inputTextStyle) ?? other.inputTextStyle,
      inputDecoration: other.inputDecoration,
      activeBorderGradient: other.activeBorderGradient,
      idleBorderGradient: other.idleBorderGradient,
      borderRadius: other.borderRadius,
      expandButtonColor: other.expandButtonColor,
    );
  }
}

class MessageListViewThemeData {
  /// Creates a [MessageListViewThemeData].
  const MessageListViewThemeData({
    this.backgroundColor,
    this.backgroundImage,
  });

  final Color? backgroundColor;
  final DecorationImage? backgroundImage;

  MessageListViewThemeData copyWith({
    Color? backgroundColor,
    DecorationImage? backgroundImage,
  }) =>
      MessageListViewThemeData(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        backgroundImage: backgroundImage ?? this.backgroundImage,
      );

  MessageListViewThemeData merge(MessageListViewThemeData? other) {
    if (other == null) {
      return this;
    }
    return copyWith(
      backgroundColor: other.backgroundColor,
      backgroundImage: other.backgroundImage,
    );
  }
}

class ReactionIcon {
  /// Constructor for creating [ReactionIcon]
  ReactionIcon({
    required this.type,
    required this.builder,
  });

  final String type;
  final Widget Function(
    BuildContext,
    bool highlighted,
    double size,
  ) builder;
}

class AppTextTheme {
  /// Initialise light text theme
  AppTextTheme.light({
    this.title = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.headlineBold = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.headline = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    this.bodyBold = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    this.body = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    this.footnoteBold = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    this.footnote = const TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    this.captionBold = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  });

  /// Initialise with dark theme
  AppTextTheme.dark({
    this.title = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    this.headlineBold = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    this.headline = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    this.bodyBold = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    this.body = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    this.footnoteBold = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    this.footnote = const TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    this.captionBold = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  });

  final TextStyle title;
  final TextStyle headlineBold;
  final TextStyle headline;
  final TextStyle bodyBold;
  final TextStyle body;
  final TextStyle footnoteBold;
  final TextStyle footnote;
  final TextStyle captionBold;

  AppTextTheme copyWith({
    Brightness brightness = Brightness.light,
    TextStyle? body,
    TextStyle? title,
    TextStyle? headlineBold,
    TextStyle? headline,
    TextStyle? bodyBold,
    TextStyle? footnoteBold,
    TextStyle? footnote,
    TextStyle? captionBold,
  }) =>
      brightness == Brightness.light
          ? AppTextTheme.light(
              body: body ?? this.body,
              title: title ?? this.title,
              headlineBold: headlineBold ?? this.headlineBold,
              headline: headline ?? this.headline,
              bodyBold: bodyBold ?? this.bodyBold,
              footnoteBold: footnoteBold ?? this.footnoteBold,
              footnote: footnote ?? this.footnote,
              captionBold: captionBold ?? this.captionBold,
            )
          : AppTextTheme.dark(
              body: body ?? this.body,
              title: title ?? this.title,
              headlineBold: headlineBold ?? this.headlineBold,
              headline: headline ?? this.headline,
              bodyBold: bodyBold ?? this.bodyBold,
              footnoteBold: footnoteBold ?? this.footnoteBold,
              footnote: footnote ?? this.footnote,
              captionBold: captionBold ?? this.captionBold,
            );

  /// Merge text theme
  AppTextTheme merge(AppTextTheme? other) {
    if (other == null) return this;
    return copyWith(
      body: body.merge(other.body),
      title: title.merge(other.title),
      headlineBold: headlineBold.merge(other.headlineBold),
      headline: headline.merge(other.headline),
      bodyBold: bodyBold.merge(other.bodyBold),
      footnoteBold: footnoteBold.merge(other.footnoteBold),
      footnote: footnote.merge(other.footnote),
      captionBold: captionBold.merge(other.captionBold),
    );
  }
}
