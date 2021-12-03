import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'theme_models.dart';

class ChatAppTheme extends InheritedWidget {
  const ChatAppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final ChatAppThemeData data;

  @override
  bool updateShouldNotify(ChatAppTheme old) => data != old.data;

  static ChatAppThemeData of(BuildContext context) {
    final chatAppTheme =
        context.dependOnInheritedWidgetOfExactType<ChatAppTheme>();

    assert(
      chatAppTheme != null,
      'You must have a ChatAppTheme widget at the top of your widget tree',
    );

    return chatAppTheme!.data;
  }
}

class ChatAppThemeData {
  /// Create a theme from scratch
  factory ChatAppThemeData({
    Brightness? brightness,
    AppTextTheme? textTheme,
    ColorTheme? colorTheme,
    MessageThemeData? otherMessageTheme,
    MessageThemeData? ownMessageTheme,
    List<ReactionIcon>? reactionIcons,
    MessageInputThemeData? messageInputTheme,
    MessageListViewThemeData? messageListViewTheme,
    IconThemeData? primaryIconTheme,
  }) {
    brightness ??= colorTheme?.brightness ?? Brightness.light;
    final isDark = brightness == Brightness.dark;
    textTheme ??= isDark ? AppTextTheme.dark() : AppTextTheme.light();
    colorTheme ??= isDark ? ColorTheme.dark() : ColorTheme.light();

    final defaultData = ChatAppThemeData.fromColorAndTextTheme(
      colorTheme,
      textTheme,
    );

    final customizedData = defaultData.copyWith(
      otherMessageTheme: otherMessageTheme,
      ownMessageTheme: ownMessageTheme,
      messageInputTheme: messageInputTheme,
      messageListViewTheme: messageListViewTheme,
    );

    return defaultData.merge(customizedData);
  }

  /// Raw theme init
  const ChatAppThemeData.raw({
    required this.textTheme,
    required this.colorTheme,
    required this.otherMessageTheme,
    required this.ownMessageTheme,
    required this.messageInputTheme,
    required this.reactionIcons,
    required this.messageListViewTheme,
    required this.primaryIconTheme,
  });

  /// Theme initialised with light
  factory ChatAppThemeData.light() =>
      ChatAppThemeData(brightness: Brightness.light);

  /// Theme initialised with dark
  factory ChatAppThemeData.dark() =>
      ChatAppThemeData(brightness: Brightness.dark);

  factory ChatAppThemeData.fromTheme(ThemeData theme) {
    final defaultTheme = ChatAppThemeData(brightness: theme.brightness);
    final customizedTheme = ChatAppThemeData.fromColorAndTextTheme(
      defaultTheme.colorTheme.copyWith(
        accentPrimary: theme.colorScheme.secondary,
      ),
      defaultTheme.textTheme,
    );
    return defaultTheme.merge(customizedTheme);
  }

  factory ChatAppThemeData.fromColorAndTextTheme(
    ColorTheme colorTheme,
    AppTextTheme textTheme,
  ) {
    final accentColor = colorTheme.accentPrimary;
    final iconTheme =
        IconThemeData(color: colorTheme.textHighEmphasis.withOpacity(0.5));
    return ChatAppThemeData.raw(
      textTheme: textTheme,
      colorTheme: colorTheme,
      primaryIconTheme: iconTheme,
      ownMessageTheme: MessageThemeData(
        messageAuthorStyle:
            textTheme.footnote.copyWith(color: colorTheme.textLowEmphasis),
        messageTextStyle: textTheme.body,
        createdAtStyle:
            textTheme.footnote.copyWith(color: colorTheme.textLowEmphasis),
        repliesStyle: textTheme.footnoteBold.copyWith(color: accentColor),
        messageBackgroundColor: colorTheme.disabled,
        reactionsBackgroundColor: colorTheme.barsBg,
        reactionsBorderColor: colorTheme.borders,
        reactionsMaskColor: colorTheme.appBg,
        messageBorderColor: colorTheme.disabled,
        messageLinksStyle: TextStyle(
          color: accentColor,
        ),
        linkBackgroundColor: colorTheme.linkBg,
      ),
      otherMessageTheme: MessageThemeData(
        reactionsBackgroundColor: colorTheme.disabled,
        reactionsBorderColor: colorTheme.barsBg,
        reactionsMaskColor: colorTheme.appBg,
        messageTextStyle: textTheme.body,
        createdAtStyle:
            textTheme.footnote.copyWith(color: colorTheme.textLowEmphasis),
        messageAuthorStyle:
            textTheme.footnote.copyWith(color: colorTheme.textLowEmphasis),
        repliesStyle: textTheme.footnoteBold.copyWith(color: accentColor),
        messageLinksStyle: TextStyle(
          color: accentColor,
        ),
        messageBackgroundColor: colorTheme.barsBg,
        messageBorderColor: colorTheme.borders,
        linkBackgroundColor: colorTheme.linkBg,
      ),
      messageInputTheme: MessageInputThemeData(
        borderRadius: BorderRadius.circular(20),
        sendAnimationDuration: const Duration(milliseconds: 300),
        actionButtonColor: colorTheme.accentPrimary,
        actionButtonIdleColor: colorTheme.textLowEmphasis,
        expandButtonColor: colorTheme.accentPrimary,
        sendButtonColor: colorTheme.accentPrimary,
        sendButtonIdleColor: colorTheme.disabled,
        inputBackgroundColor: colorTheme.barsBg,
        inputTextStyle: textTheme.body,
        idleBorderGradient: LinearGradient(
          colors: [
            colorTheme.disabled,
            colorTheme.disabled,
          ],
        ),
        activeBorderGradient: LinearGradient(
          colors: [
            colorTheme.disabled,
            colorTheme.disabled,
          ],
        ),
      ),
      reactionIcons: [
        ReactionIcon(
          type: 'love',
          builder: (context, highlighted, size) {
            final theme = ChatAppTheme.of(context);
            return SvgPicture.asset(
              'assets/svgs/Icon_love_reaction.svg',
              width: size,
              height: size,
              color: highlighted
                  ? theme.colorTheme.accentPrimary
                  : theme.primaryIconTheme.color!.withOpacity(0.5),
            );
          },
        ),
        ReactionIcon(
          type: 'like',
          builder: (context, highlighted, size) {
            final theme = ChatAppTheme.of(context);
            return SvgPicture.asset(
              'assets/svgs/Icon_thumbs_up_reaction.svg',
              width: size,
              height: size,
              color: highlighted
                  ? theme.colorTheme.accentPrimary
                  : theme.primaryIconTheme.color!.withOpacity(0.5),
            );
          },
        ),
        ReactionIcon(
          type: 'sad',
          builder: (context, highlighted, size) {
            final theme = ChatAppTheme.of(context);
            return SvgPicture.asset(
              'assets/svgs/Icon_thumbs_up_reaction.svg',
              width: size,
              height: size,
              color: highlighted
                  ? theme.colorTheme.accentPrimary
                  : theme.primaryIconTheme.color!.withOpacity(0.5),
            );
          },
        ),
        ReactionIcon(
          type: 'haha',
          builder: (context, highlighted, size) {
            final theme = ChatAppTheme.of(context);
            return SvgPicture.asset(
              'assets/svgs/Icon_LOL_reaction.svg',
              width: size,
              height: size,
              color: highlighted
                  ? theme.colorTheme.accentPrimary
                  : theme.primaryIconTheme.color!.withOpacity(0.5),
            );
          },
        ),
        ReactionIcon(
          type: 'wow',
          builder: (context, highlighted, size) {
            final theme = ChatAppTheme.of(context);
            return SvgPicture.asset(
              'assets/svgs/Icon_wut_reaction.svg',
              width: size,
              height: size,
              color: highlighted
                  ? theme.colorTheme.accentPrimary
                  : theme.primaryIconTheme.color!.withOpacity(0.5),
            );
          },
        ),
      ],
      messageListViewTheme: MessageListViewThemeData(
        backgroundColor: colorTheme.barsBg,
      ),
    );
  }

  final AppTextTheme textTheme;
  final ColorTheme colorTheme;
  final MessageThemeData ownMessageTheme;
  final MessageThemeData otherMessageTheme;
  final MessageInputThemeData messageInputTheme;
  final List<ReactionIcon> reactionIcons;
  final MessageListViewThemeData messageListViewTheme;
  final IconThemeData primaryIconTheme;

  ChatAppThemeData copyWith({
    AppTextTheme? textTheme,
    ColorTheme? colorTheme,
    MessageThemeData? ownMessageTheme,
    MessageThemeData? otherMessageTheme,
    List<ReactionIcon>? reactionIcons,
    MessageInputThemeData? messageInputTheme,
    MessageListViewThemeData? messageListViewTheme,
    IconThemeData? primaryIconTheme,
  }) =>
      ChatAppThemeData.raw(
        textTheme: this.textTheme.merge(textTheme),
        colorTheme: this.colorTheme.merge(colorTheme),
        ownMessageTheme: this.ownMessageTheme.merge(ownMessageTheme),
        otherMessageTheme: this.otherMessageTheme.merge(otherMessageTheme),
        reactionIcons: reactionIcons ?? this.reactionIcons,
        messageInputTheme: this.messageInputTheme.merge(messageInputTheme),
        messageListViewTheme: messageListViewTheme ?? this.messageListViewTheme,
        primaryIconTheme: primaryIconTheme ?? this.primaryIconTheme,
      );

  ChatAppThemeData merge(ChatAppThemeData? other) {
    if (other == null) return this;
    return copyWith(
      textTheme: textTheme.merge(other.textTheme),
      colorTheme: colorTheme.merge(other.colorTheme),
      ownMessageTheme: ownMessageTheme.merge(other.ownMessageTheme),
      otherMessageTheme: otherMessageTheme.merge(other.otherMessageTheme),
      messageInputTheme: messageInputTheme.merge(other.messageInputTheme),
      reactionIcons: other.reactionIcons,
      messageListViewTheme: messageListViewTheme.merge(other.messageListViewTheme),
      primaryIconTheme: other.primaryIconTheme,
    );
  }
}
