// import 'dart:async';

// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_portal/flutter_portal.dart';

// import '../../config/theme/themes.dart';
// import '../../models/message/message.dart';
// import '../../models/user/user.dart';
// import '../../widgets/stream/better_stream_builder.dart';
// import '../../widgets/stream/message_widget.dart';
// import '../../widgets/stream/stream_channel.dart';

// typedef ErrorBuilder = Widget Function(BuildContext context, Object error);
// typedef MessageBuilder = Widget Function(
//   BuildContext,
//   MessageDetails,
//   List<Message>,
//   MessageWidget defaultMessageWidget,
// );

// typedef ParentMessageBuilder = Widget Function(
//   BuildContext,
//   Message?,
//   MessageWidget defaultMessageWidget,
// );

// typedef SystemMessageBuilder = Widget Function(
//   BuildContext,
//   Message,
// );

// typedef ThreadBuilder = Widget Function(BuildContext context, Message? parent);
// typedef ThreadTapCallback = void Function(Message, Widget?);
// typedef OnMessageSwiped = void Function(Message);
// typedef OnMessageTap = void Function(Message);
// typedef ReplyTapCallback = void Function(Message);

// class MessageDetails {
//   MessageDetails(
//     String currentUserId,
//     this.message,
//     List<Message> messages,
//     this.index,
//   ) {
//     isMyMessage = message.from == currentUserId;
//     isLastUser =
//         index + 1 < messages.length && message.from == messages[index + 1].from;
//     isNextUser = index - 1 >= 0 && message.from == messages[index - 1].from;
//   }

//   late final bool isMyMessage;
//   late final bool isLastUser;
//   late final bool isNextUser;
//   final Message message;
//   final int index;
// }


// Stream<T> valueListenableToStreamAdapter<T>(ValueListenable<T> listenable) {
//   late StreamController<T> _controller;

//   void listener() {
//     _controller.add(listenable.value);
//   }

//   void start() {
//     listenable.addListener(listener);
//   }

//   void end() {
//     listenable.removeListener(listener);
//   }

//   _controller = StreamController<T>(
//     onListen: start,
//     onPause: end,
//     onResume: start,
//     onCancel: end,
//   );

//   return _controller.stream;
// }

// bool Function(Message) defaultMessageFilter(String currentUserId) =>
//     (Message m) {
//       final isMyMessage = m.from == currentUserId;
//       // if (m.shadowed && !isMyMessage) return false;
//       if (!isMyMessage) return false;
//       return true;
//     };

// class MessageListCore extends StatefulWidget {
//   const MessageListCore({
//     Key? key,
//     required this.loadingBuilder,
//     required this.emptyBuilder,
//     required this.messageListBuilder,
//     required this.errorBuilder,
//     this.parentMessage,
//     this.messageListController,
//     this.messageFilter,
//     this.paginationLimit = 20,
//   }) : super(key: key);

//   final MessageListController? messageListController;
//   final Widget Function(BuildContext, List<Message>) messageListBuilder;
//   final WidgetBuilder loadingBuilder;
//   final WidgetBuilder emptyBuilder;
//   final int paginationLimit;
//   final ErrorBuilder errorBuilder;
//   final Message? parentMessage;
//   final bool Function(Message)? messageFilter;

//   @override
//   MessageListCoreState createState() => MessageListCoreState();
// }

// class MessageListCoreState extends State<MessageListCore> {

//   bool get _upToDate => true;

//   bool get _isThreadConversation => widget.parentMessage != null;

//   // OwnUser? get _currentUser => _streamChannel!.channel.client.state.currentUser;

//   var _messages = <Message>[];

//   @override
//   Widget build(BuildContext context) {
//     // final messagesStream = _isThreadConversation
//     //     ? _streamChannel!.channel.state?.threadsStream
//     //         .where((threads) => threads.containsKey(widget.parentMessage!.id))
//     //         .map((threads) => threads[widget.parentMessage!.id])
//     //     : _streamChannel!.channel.state?.messagesStream;

//     // final initialData = _isThreadConversation
//     //     ? _streamChannel!.channel.state?.threads[widget.parentMessage!.id]
//     //     : _streamChannel!.channel.state?.messages;

//     return BetterStreamBuilder<List<Message>>(
//       // initialData: initialData,
//       // stream: messagesStream,
//       stream: StreamController<List<Message>>().stream,
//       errorBuilder: widget.errorBuilder,
//       noDataBuilder: widget.loadingBuilder,
//       builder: (context, data) {
//         final messageList = data
//             .where(
//               widget.messageFilter ?? defaultMessageFilter("_currentUser!.uid"),
//             )
//             .toList(growable: false)
//             .reversed
//             .toList(growable: false);
//         if (messageList.isEmpty && !_isThreadConversation) {
//           if (_upToDate) {
//             return widget.emptyBuilder(context);
//           }
//         } else {
//           _messages = messageList;
//         }
//         return widget.messageListBuilder(context, _messages);
//       },
//     );
//   }

//   Future<void> paginateData({
//     QueryDirection direction = QueryDirection.top,
//   }) async {
//     if (!_isThreadConversation) {
//       // return _streamChannel!.queryMessages(
//       //   direction: direction,
//       //   limit: widget.paginationLimit,
//       // );
//     } else {
//       // return _streamChannel!.getReplies(
//       //   widget.parentMessage!.id,
//       //   limit: widget.paginationLimit,
//       // );
//     }
//   }

//   @override
//   void didChangeDependencies() {

//     // if (newStreamChannel != _streamChannel) {
//     //   if (_streamChannel == null /*only first time*/ && _isThreadConversation) {
//     //     newStreamChannel.getReplies(
//     //       widget.parentMessage!.id,
//     //       limit: widget.paginationLimit,
//     //     );
//     //   }
//     //   _streamChannel = newStreamChannel;
//     // }

//     super.didChangeDependencies();
//   }

//   @override
//   void didUpdateWidget(covariant MessageListCore oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (widget.messageListController != oldWidget.messageListController) {
//       _setupController();
//     }

//     if (widget.parentMessage?.id != widget.parentMessage?.id) {
//       if (_isThreadConversation) {
//         // _streamChannel!.getReplies(
//         //   widget.parentMessage!.id,
//         //   limit: widget.paginationLimit,
//         // );
//       }
//     }
//   }

//   @override
//   void initState() {
//     _setupController();

//     super.initState();
//   }

//   void _setupController() {
//     if (widget.messageListController != null) {
//       widget.messageListController!.paginateData = paginateData;
//     }
//   }

//   @override
//   void dispose() {
//     if (!_upToDate) {
//       // _streamChannel!.reloadChannel();
//     }
//     super.dispose();
//   }
// }

// class MessageListController {
//   Future<void> Function({QueryDirection direction})? paginateData;
// }

// class InfoTile extends StatelessWidget {
//   /// Constructor for creating an [InfoTile] widget
//   const InfoTile({
//     Key? key,
//     required this.message,
//     required this.child,
//     required this.showMessage,
//     this.tileAnchor,
//     this.childAnchor,
//     this.textStyle,
//     this.backgroundColor,
//   }) : super(key: key);

//   final String message;
//   final Widget child;
//   final bool showMessage;
//   final Alignment? tileAnchor;
//   final Alignment? childAnchor;
//   final TextStyle? textStyle;
//   final Color? backgroundColor;

//   @override
//   Widget build(BuildContext context) {
//     final chatThemeData = ChatAppTheme.of(context);
//     return PortalEntry(
//       visible: showMessage,
//       portalAnchor: tileAnchor ?? Alignment.topCenter,
//       childAnchor: childAnchor ?? Alignment.bottomCenter,
//       portal: Container(
//         height: 25,
//         color: backgroundColor ??
//             chatThemeData.colorTheme.textLowEmphasis.withOpacity(0.9),
//         child: Center(
//           child: Text(
//             message,
//             style: textStyle ??
//                 chatThemeData.textTheme.body.copyWith(
//                   color: Colors.white,
//                 ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//       ),
//       child: child,
//     );
//   }
// }

// class SystemMessage extends StatelessWidget {
//   /// Constructor for creating a [SystemMessage]
//   const SystemMessage({
//     Key? key,
//     required this.message,
//     this.onMessageTap,
//   }) : super(key: key);

//   /// This message
//   final Message message;

//   /// The function called when tapping on the message
//   /// when the message is not failed
//   final void Function(Message)? onMessageTap;

//   @override
//   Widget build(BuildContext context) {
//     final theme = ChatAppTheme.of(context);
//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       onTap: () {
//         if (onMessageTap != null) {
//           onMessageTap!(message);
//         }
//       },
//       child: Text(
//         message.text,
//         textAlign: TextAlign.center,
//         softWrap: true,
//         style: theme.textTheme.captionBold.copyWith(
//           color: theme.colorTheme.textLowEmphasis,
//         ),
//       ),
//     );
//   }
// }

// class LoadingIndicator extends StatelessWidget {
//   const LoadingIndicator({
//     Key? key,
//     required this.streamTheme,
//     required this.isThreadConversation,
//     required this.direction,
//     this.indicatorBuilder,
//   }) : super(key: key);

//   final ChatAppThemeData streamTheme;
//   final bool isThreadConversation;
//   final QueryDirection direction;
//   final WidgetBuilder? indicatorBuilder;

//   @override
//   Widget build(BuildContext context) {
//     // final stream = direction == QueryDirection.top
//     //     ? streamChannel.queryTopMessages
//     //     : streamChannel.queryBottomMessages;
//     return BetterStreamBuilder<bool>(
//       key: Key('LOADING-INDICATOR $direction'),
//       stream: StreamController<bool>().stream,
//       initialData: false,
//       builder: (context, data) {
//         if (!data) return const Offstage();
//         return indicatorBuilder?.call(context) ??
//             const Center(
//               child: Padding(
//                 padding: EdgeInsets.all(8),
//                 child: CircularProgressIndicator(),
//               ),
//             );
//       },
//       errorBuilder: (context, error) => Container(
//         color: streamTheme.colorTheme.accentError.withOpacity(0.2),
//         child: Center(
//           child: Text(
//             "loadingMessagesError".tr(),
//           ),
//         ),
//       ),
//     );
//   }
// }
