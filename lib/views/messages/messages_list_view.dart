// import 'dart:async';

// import 'package:appwrite/appwrite.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:jiffy/jiffy.dart';
// import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
// import 'package:test_appwrite/models/member/member.dart';
// import 'package:visibility_detector/visibility_detector.dart';


// import '../../config/theme/theme_models.dart';
// import '../../config/theme/themes.dart';
// import '../../core/providers.dart';
// import '../../models/enums.dart';
// import '../../models/message/message.dart';
// import '../../models/user/user.dart';
// import '../../widgets/app_svg.dart';
// import '../../widgets/stream/better_stream_builder.dart';
// import '../../widgets/stream/connection_status_builder.dart';
// import '../../widgets/stream/date_divider.dart';
// import '../../widgets/stream/full_screen_media.dart';
// import '../../widgets/stream/lazy_load_screen.dart';
// import '../../widgets/stream/message_widget.dart';
// import '../../widgets/stream/stream_channel.dart';
// import '../../widgets/stream/swipeable.dart';
// import '../../widgets/event_type.dart';
// import 'message_view_models.dart';


// class MessageListView extends StatefulWidget {
//   const MessageListView({
//     Key? key,
//     this.showScrollToBottom = true,
//     this.parentMessage,
//     this.onThreadTap,
//     this.scrollPhysics = const ClampingScrollPhysics(),
//     this.initialScrollIndex,
//     this.initialAlignment,
//     this.scrollController,
//     this.itemPositionListener,
//     this.onMessageSwiped,
//     this.highlightInitialMessage = false,
//     this.messageHighlightColor,
//     this.showConnectionStateTile = false,
//     this.messageFilter,
//     this.onMessageTap,
//     this.onSystemMessageTap,
//     this.pinPermissions = const [],
//     this.showFloatingDateDivider = true,
//     this.messageListController,
//     this.reverse = true,
//     this.paginationLimit = 20,
//     this.paginationLoadingIndicatorBuilder,
//   }) : super(key: key);

//   final bool reverse;
//   final int paginationLimit;
//   final ThreadTapCallback? onThreadTap;
//   final bool showScrollToBottom;
//   final Message? parentMessage;
//   final int? initialScrollIndex;
//   final double? initialAlignment;
//   final ItemScrollController? scrollController;
//   final ItemPositionsListener? itemPositionListener;
//   final ScrollPhysics? scrollPhysics;
//   final OnMessageSwiped? onMessageSwiped;
//   final bool highlightInitialMessage;
//   final Color? messageHighlightColor;
//   final bool showConnectionStateTile;
//   final bool showFloatingDateDivider;
//   final bool Function(Message)? messageFilter;
//   final OnMessageTap? onMessageTap;
//   final OnMessageTap? onSystemMessageTap;
//   final List<String> pinPermissions;
//   final MessageListController? messageListController;
//   final WidgetBuilder? paginationLoadingIndicatorBuilder;

//   @override
//   _MessageListViewState createState() => _MessageListViewState();
// }

// class _MessageListViewState extends State<MessageListView> {
//   ItemScrollController? _scrollController;
//   void Function(Message)? _onThreadTap;
//   final ValueNotifier<bool> _showScrollToBottom = ValueNotifier(false);
//   late final ItemPositionsListener _itemPositionListener;
//   int? _messageListLength;
//   late ChatAppThemeData _streamTheme;

//   int get _initialIndex {
//     final initialScrollIndex = widget.initialScrollIndex;
//     if (initialScrollIndex != null) return initialScrollIndex;
//     // if (streamChannel!.initialMessageId != null) {
//       // final messages = streamChannel!.channel.state!.messages
//       //     .where(widget.messageFilter ??
//       //         defaultMessageFilter(
//       //           streamChannel!.channel.client.state.currentUser!.id,
//       //         ))
//       //     .toList(growable: false);
//       final totalMessages = messages.length;
//       final messageIndex = 2;
//       //     messages.indexWhere((e) => e.id == streamChannel!.initialMessageId);
//       final index = totalMessages - messageIndex;
//       if (index != 0) return index + 1;
//       return index;
//     // }
//     return 0;
//   }

//   double get _initialAlignment {
//     final initialAlignment = widget.initialAlignment;
//     if (initialAlignment != null) return initialAlignment;
//     return 0.1;
//   }

//   // bool _isInitialMessage(String id) => streamChannel!.initialMessageId == id;
//   bool get _upToDate => true;
//   bool get _isThreadConversation => widget.parentMessage != null;
//   bool _bottomPaginationActive = false;
//   bool initialMessageHighlightComplete = false;
//   bool _inBetweenList = false;
//   int initialIndex = 0;
//   double initialAlignment = 0;
//   List<Message> messages = <Message>[];
//   Map<String, int> messagesIndex = {};
//   late final _defaultController = MessageListController();

//   MessageListController get _messageListController =>
//       widget.messageListController ?? _defaultController;

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, _) {
//         return MessageListCore(
//           paginationLimit: widget.paginationLimit,
//           messageFilter: widget.messageFilter,
//           loadingBuilder: (context) => const Center(
//                     child: CircularProgressIndicator(),
//                   ),
//           emptyBuilder: (context) => Center(
//                     child: Text(
//                       "emptyChatMessagesText".tr(),
//                       style: _streamTheme.textTheme.footnote.copyWith(
//                         color: _streamTheme.colorTheme.textHighEmphasis
//                             .withOpacity(0.5),
//                       ),
//                     ),
//                   ),
//           messageListBuilder:(context, list) => _buildListView(list, ref.read(authProvider).user!),
//           messageListController: _messageListController,
//           parentMessage: widget.parentMessage,
//           errorBuilder: (BuildContext context, Object error) => Center(
//                     child: Text(
//                       "genericErrorText".tr(),
//                       style: _streamTheme.textTheme.footnote.copyWith(
//                         color: _streamTheme.colorTheme.textHighEmphasis
//                             .withOpacity(0.5),
//                       ),
//                     ),
//                   ),
//         );
//       }
//     );
//   }

//   Widget _buildListView(List<Message> data, User user) {
//     messages = data;
//     for (var index = 0; index < messages.length; index++) {
//       messagesIndex[messages[index].id] = index;
//     }
//     final newMessagesListLength = messages.length;

//     if (_messageListLength != null) {
//       if (_bottomPaginationActive || (_inBetweenList && _upToDate)) {
//         if (_itemPositionListener.itemPositions.value.isNotEmpty) {
//           final first = _itemPositionListener.itemPositions.value.first;
//           final diff = newMessagesListLength - _messageListLength!;
//           if (diff > 0) {
//             // if (messages[0].from !=
//             //     streamChannel!.channel.client.state.currentUser?.id) {
//             //   initialIndex = first.index + diff;
//             //   initialAlignment = first.itemLeadingEdge;
//             // }
//           }
//         }
//       }
//     }

//     _messageListLength = newMessagesListLength;

//     final itemCount = messages.length + // total messages
//             2 + // top + bottom loading indicator
//             2 + // header + footer
//             1 // parent message
//         ;

//     final child = Stack(
//       alignment: Alignment.center,
//       children: [
//         ConnectionStatusBuilder(
//           statusBuilder: (context, status) {
//             var statusString = '';
//             var showStatus = true;
//             switch (status) {
//               case ConnectionStatus.connected:
//                 statusString = "connectedLabel".tr();
//                 showStatus = false;
//                 break;
//               case ConnectionStatus.connecting:
//                 statusString = "reconnectingLabel".tr();
//                 break;
//               case ConnectionStatus.disconnected:
//                 statusString = "disconnectedLabel".tr();
//                 break;
//             }

//             return InfoTile(
//               showMessage: widget.showConnectionStateTile && showStatus,
//               tileAnchor: Alignment.topCenter,
//               childAnchor: Alignment.topCenter,
//               message: statusString,
//               child: LazyLoadScrollView(
//                 onPageScrollStart: () {
//                   FocusScope.of(context).unfocus();
//                 },
//                 onStartOfPage: () async {
//                   _inBetweenList = false;
//                   if (!_upToDate) {
//                     _bottomPaginationActive = true;
//                     return _paginateData(
//                       QueryDirection.bottom,
//                     );
//                   }
//                 },
//                 onEndOfPage: () async {
//                   _inBetweenList = false;
//                   _bottomPaginationActive = false;
//                   return _paginateData(
//                     QueryDirection.top,
//                   );
//                 },
//                 onInBetweenOfPage: () {
//                   _inBetweenList = true;
//                 },
//                 child: ScrollablePositionedList.separated(
//                   key: (initialIndex != 0 && initialAlignment != 0)
//                       ? ValueKey('$initialIndex-$initialAlignment')
//                       : null,
//                   itemPositionsListener: _itemPositionListener,
//                   initialScrollIndex: initialIndex,
//                   initialAlignment: initialAlignment,
//                   physics: widget.scrollPhysics,
//                   itemScrollController: _scrollController,
//                   reverse: widget.reverse,
//                   itemCount: itemCount,                  
//                   // findChildIndexCallback: (Key key) {
//                   //   final indexedKey = key as IndexedKey;
//                   //   final valueKey = indexedKey.key as ValueKey<String>?;
//                   //   if (valueKey != null) {
//                   //     final index = messagesIndex[valueKey.value];
//                   //     if (index != null) {
//                   //       return ((index + 2) * 2) - 1;
//                   //     }
//                   //   }
//                   // },

//                   // Item Count -> 8 (1 parent, 2 header+footer, 2 top+bottom, 3 messages)
//                   // eg:     |Type|         rev(|Index(item)|)     rev(|Index(separator)|)    |Index(item)|    |Index(separator)|
//                   //     ParentMessage  ->        7                                             (count-1)
//                   //        Separator(ThreadSeparator)          ->           6                                      (count-2)
//                   //     Header         ->        6                                             (count-2)
//                   //        Separator(Header -> 8??T -> 0||52)  ->           5                                      (count-3)
//                   //     TopLoader      ->        5                                             (count-3)
//                   //        Separator(0)                        ->           4                                      (count-4)
//                   //     Message        ->        4                                             (count-4)
//                   //        Separator(2||8)                     ->           3                                      (count-5)
//                   //     Message        ->        3                                             (count-5)
//                   //        Separator(2||8)                     ->           2                                      (count-6)
//                   //     Message        ->        2                                             (count-6)
//                   //        Separator(0)                        ->           1                                      (count-7)
//                   //     BottomLoader   ->        1                                             (count-7)
//                   //        Separator(Footer -> 8??30)          ->           0                                      (count-8)
//                   //     Footer         ->        0                                             (count-8)

//                   separatorBuilder: (context, i) {
//                     if (i == itemCount - 2) {
//                       if (widget.parentMessage == null) {
//                         return const Offstage();
//                       }
//                       return _buildThreadSeparator();
//                     }
//                     if (i == itemCount - 3) {
//                       if (widget.reverse) {
//                         if (_isThreadConversation) return const Offstage();
//                         return const SizedBox(height: 52);
//                       }
//                       return const SizedBox(height: 8);
//                     }
//                     if (i == 0) {
//                       if (widget.reverse) {
//                         return const SizedBox(height: 30);
//                       }
//                       return const SizedBox(height: 8);
//                     }

//                     if (i == 1 || i == itemCount - 4) return const Offstage();

//                     late final Message message, nextMessage;
//                     if (widget.reverse) {
//                       message = messages[i - 1];
//                       nextMessage = messages[i - 2];
//                     } else {
//                       message = messages[i - 2];
//                       nextMessage = messages[i - 1];
//                     }
//                     if (!Jiffy(message.createdAt.toLocal()).isSame(
//                       nextMessage.createdAt.toLocal(),
//                       Units.DAY,
//                     )) {
//                       final divider = Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 12),
//                               child: DateDivider(
//                                 dateTime: nextMessage.createdAt.toLocal(),
//                               ),
//                             );
//                       return divider;
//                     }
//                     final timeDiff =
//                         Jiffy(nextMessage.createdAt.toLocal()).diff(
//                       message.createdAt.toLocal(),
//                       Units.MINUTE,
//                     );

//                     final isNextUserSame =
//                         message.from == nextMessage.from;
//                     // final isThread = message.replyCount! > 0;
//                     final isThread = false;
//                     final isDeleted = false;
//                     if (timeDiff >= 1 ||
//                         !isNextUserSame ||
//                         isThread ||
//                         isDeleted) {
//                       return const SizedBox(height: 8);
//                     }
//                     return const SizedBox(height: 2);
//                   },
//                   itemBuilder: (context, i) {
//                     if (i == itemCount - 1) {
//                       if (widget.parentMessage == null) {
//                         return const Offstage();
//                       }
//                       return buildParentMessage(widget.parentMessage!, user);
//                     }

//                     if (i == itemCount - 2) {
//                       return const Offstage();
//                     }

//                     final indicatorBuilder =
//                         widget.paginationLoadingIndicatorBuilder;

//                     if (i == itemCount - 3) {
//                       return _loadingIndicator(
//                         QueryDirection.top,
//                         indicatorBuilder: indicatorBuilder,
//                       );
//                     }

//                     if (i == 1) {
//                       return _loadingIndicator(
//                         QueryDirection.bottom,
//                         indicatorBuilder: indicatorBuilder,
//                       );
//                     }

//                     if (i == 0) {
//                       if (widget.reverse) {
//                         return const Offstage();
//                       } else {
//                         return const Offstage();
//                       }
//                     }

//                     const bottomMessageIndex = 2; // 1 -> loader // 0 -> footer

//                     final message = messages[i - 2];
//                     Widget messageWidget;

//                     if (i == bottomMessageIndex) {
//                       messageWidget = _buildBottomMessage(
//                         context,
//                         message,
//                         messages,
//                         i - 2,
//                         user
//                       );
//                     } else {
//                       messageWidget = buildMessage(message, messages, i - 2, user);
//                     }
//                     return KeyedSubtree(
//                       key: ValueKey(message.id),
//                       child: messageWidget,
//                     );
//                   },
//                 ),
//               ),
//             );
//           },
//         ),
//         BetterStreamBuilder<bool>(
//           // stream: streamChannel!.channel.state!.isUpToDateStream,
//           stream: StreamController<bool>().stream,
//           // initialData: streamChannel!.channel.state!.isUpToDate,
//           builder: (context, snapshot) => ValueListenableBuilder<bool>(
//             valueListenable: _showScrollToBottom,
//             child: _buildScrollToBottom(),
//             builder: (context, value, child) {
//               if (!snapshot || value) {
//                 return child!;
//               }
//               return const Offstage();
//             },
//           ),
//         ),
//         if (widget.showFloatingDateDivider)
//           _buildFloatingDateDivider(itemCount),
//       ],
//     );

//     final backgroundColor = ChatAppTheme.of(context).messageListViewTheme.backgroundColor;
//     final backgroundImage = ChatAppTheme.of(context).messageListViewTheme.backgroundImage;

//     if (backgroundColor != null || backgroundImage != null) {
//       return Container(
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           image: backgroundImage,
//         ),
//         child: child,
//       );
//     }

//     return child;
//   }

//   Widget _buildThreadSeparator() {
//     final replyCount = 1;
//     return DecoratedBox(
//       decoration: BoxDecoration(
//         gradient: _streamTheme.colorTheme.bgGradient,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Text(
//           "threadSeparatorText(replyCount)".tr(),
//           textAlign: TextAlign.center,
//           style: ChatAppTheme.of(context).textTheme.body,
//         ),
//       ),
//     );
//   }

//   Positioned _buildFloatingDateDivider(int itemCount) => Positioned(
//         top: 20,
//         left: 0,
//         right: 0,
//         child: BetterStreamBuilder<Iterable<ItemPosition>>(
//           initialData: _itemPositionListener.itemPositions.value,
//           stream: valueListenableToStreamAdapter(
//             _itemPositionListener.itemPositions,
//           ),
//           comparator: (a, b) {
//             if (a == null || b == null) {
//               return false;
//             }
//             if (widget.reverse) {
//               final aTop = _getTopElementIndex(a);
//               final bTop = _getTopElementIndex(b);
//               return aTop == bTop;
//             } else {
//               final aBottom = _getBottomElementIndex(a);
//               final bBottom = _getBottomElementIndex(b);
//               return aBottom == bBottom;
//             }
//           },
//           builder: (context, values) {
//             if (values.isEmpty || messages.isEmpty) {
//               return const Offstage();
//             }

//             int? index;
//             if (widget.reverse) {
//               index = _getTopElementIndex(values);
//             } else {
//               index = _getBottomElementIndex(values);
//             }

//             if (index == null) return const Offstage();

//             if (index <= 2 || index >= itemCount - 3) {
//               if (widget.reverse) {
//                 index = itemCount - 4;
//               } else {
//                 index = 2;
//               }
//             }

//             final message = messages[index - 2];
//             return DateDivider(dateTime: message.createdAt.toLocal());
//           },
//         ),
//       );

//   Future<void> _paginateData(
//     QueryDirection direction,
//   ) =>
//       _messageListController.paginateData!(direction: direction);

//   int? _getTopElementIndex(Iterable<ItemPosition> values) {
//     final inView = values.where((position) => position.itemLeadingEdge < 1);
//     if (inView.isEmpty) return null;
//     return inView
//         .reduce((max, position) =>
//             position.itemLeadingEdge > max.itemLeadingEdge ? position : max)
//         .index;
//   }

//   int? _getBottomElementIndex(Iterable<ItemPosition> values) {
//     final inView = values.where((position) => position.itemLeadingEdge < 1);
//     if (inView.isEmpty) return null;
//     return inView
//         .reduce((min, position) =>
//             position.itemLeadingEdge < min.itemLeadingEdge ? position : min)
//         .index;
//   }

//   Widget _buildScrollToBottom() => StreamBuilder<int>(
//         // stream: streamChannel!.channel.state!.unreadCountStream,
//         builder: (_, snapshot) {
//           if (snapshot.hasError) {
//             return const Offstage();
//           } else if (!snapshot.hasData) {
//             return const Offstage();
//           }
//           final unreadCount = snapshot.data!;
//           final showUnreadCount = unreadCount > 0;
//               // streamChannel!.channel.state!.members.any((e) =>
//               //     e.userId ==
//               //     streamChannel!.channel.client.state.currentUser!.id);
//           return Positioned(
//             bottom: 8,
//             right: 8,
//             width: 40,
//             height: 40,
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 FloatingActionButton(
//                   backgroundColor: _streamTheme.colorTheme.barsBg,
//                   onPressed: () async {
//                     if (unreadCount > 0) {
//                       // streamChannel!.channel.markRead();
//                     }
//                     if (!_upToDate) {
//                       _bottomPaginationActive = false;
//                       initialAlignment = 0;
//                       initialIndex = 0;
//                       // await streamChannel!.reloadChannel();

//                       WidgetsBinding.instance?.addPostFrameCallback((_) {
//                         _scrollController!.jumpTo(index: 0);
//                       });
//                     } else {
//                       _showScrollToBottom.value = false;
//                       _scrollController!.scrollTo(
//                         index: 0,
//                         duration: const Duration(seconds: 1),
//                         curve: Curves.easeInOut,
//                       );
//                     }
//                   },
//                   child: widget.reverse
//                       ? AppSvgIcon.down(
//                           color: _streamTheme.colorTheme.textHighEmphasis,
//                         )
//                       : AppSvgIcon.up(
//                           color: _streamTheme.colorTheme.textHighEmphasis,
//                         ),
//                 ),
//                 if (showUnreadCount)
//                   Positioned(
//                     width: 20,
//                     height: 20,
//                     left: 10,
//                     top: -10,
//                     child: CircleAvatar(
//                       child: Padding(
//                         padding: const EdgeInsets.all(3),
//                         child: Text(
//                           '$unreadCount',
//                           style: const TextStyle(
//                             fontSize: 11,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           );
//         },
//       );

//   Widget _loadingIndicator(
//     QueryDirection direction, {
//     WidgetBuilder? indicatorBuilder,
//   }) =>
//       LoadingIndicator(
//         direction: direction,
//         streamTheme: _streamTheme,
//         isThreadConversation: _isThreadConversation,
//         indicatorBuilder: indicatorBuilder,
//       );

//   Widget _buildBottomMessage(
//     BuildContext context,
//     Message message,
//     List<Message> messages,
//     int index,
//     User user,
//   ) {
//     final messageWidget = buildMessage(message, messages, index, user);
//     return VisibilityDetector(
//       key: ValueKey('visibility: ${message.id}'),
//       onVisibilityChanged: (visibility) {
//         final isVisible = visibility.visibleBounds != Rect.zero;
//         if (isVisible) {
//           // final channel = streamChannel.channel;
//           // if (_upToDate &&
//           //     channel.config?.readEvents == true &&
//           //     channel.state!.unreadCount > 0) {
//             // streamChannel.channel.markRead();
//           // }
//         }
//         if (mounted) {
//           if (_showScrollToBottom.value == isVisible) {
//             _showScrollToBottom.value = !isVisible;
//           }
//         }
//       },
//       child: messageWidget,
//     );
//   }

//   Widget buildParentMessage(
//     Message message,
//     User user,
//   ) {
//     final isMyMessage =
//         message.from == user.uid;
//     final isOnlyEmoji = false;
//     final currentUser = user;
//     // final members = StreamChannel.of(context).channel.state?.members ?? [];
//     final members = <Member>[];
//     final currentUserMember =
//         members.firstWhere((e) => e.user?.uid == currentUser.uid);

//     final defaultMessageWidget = MessageWidget(
//       showReplyMessage: false,
//       showResendMessage: false,
//       showThreadReplyMessage: false,
//       showCopyMessage: false,
//       showDeleteMessage: false,
//       showEditMessage: false,
//       message: message,
//       reverse: isMyMessage,
//       showUsername: !isMyMessage,
//       padding: const EdgeInsets.all(8),
//       showSendingIndicator: false,
//       borderRadiusGeometry: BorderRadius.only(
//         topLeft: const Radius.circular(16),
//         bottomLeft:
//             isMyMessage ? const Radius.circular(16) : const Radius.circular(2),
//         topRight: const Radius.circular(16),
//         bottomRight:
//             isMyMessage ? const Radius.circular(2) : const Radius.circular(16),
//       ),
//       textPadding: EdgeInsets.symmetric(
//         vertical: 8,
//         horizontal: isOnlyEmoji ? 0 : 16.0,
//       ),
//       borderSide: isMyMessage || isOnlyEmoji ? BorderSide.none : null,
//       showUserAvatar: isMyMessage ? DisplayWidget.gone : DisplayWidget.show,
//       messageTheme: isMyMessage
//           ? _streamTheme.ownMessageTheme
//           : _streamTheme.otherMessageTheme,
//       onReturnAction: (action) {
//         switch (action) {
//           case ReturnActionType.none:
//             break;
//           case ReturnActionType.reply:
//             FocusScope.of(context).unfocus();
//             widget.onMessageSwiped?.call(message);
//             break;
//         }
//       },
//       onMessageTap: (message) {
//         if (widget.onMessageTap != null) {
//           widget.onMessageTap!(message);
//         }
//         FocusScope.of(context).unfocus();
//       },
//       showPinButton: currentUserMember != null &&
//           widget.pinPermissions.contains(currentUserMember.role),
//     );

//     return defaultMessageWidget;
//   }

//   Widget buildMessage(Message message, List<Message> messages, int index, User user) {
//     if ((message.type == 'system' || message.type == 'error') &&
//         message.text.isNotEmpty == true) {
//       return SystemMessage(
//             message: message,
//             onMessageTap: (message) {
//               if (widget.onSystemMessageTap != null) {
//                 widget.onSystemMessageTap!(message);
//               }
//               FocusScope.of(context).unfocus();
//             },
//           );
//     }

//     final userId = user.uid;
//     final isMyMessage = message.from == userId;
//     final nextMessage = index - 1 >= 0 ? messages[index - 1] : null;
//     final isNextUserSame =
//         nextMessage != null && message.from == nextMessage.from;

//     num timeDiff = 0;
//     if (nextMessage != null) {
//       timeDiff = Jiffy(nextMessage.createdAt.toLocal()).diff(
//         message.createdAt.toLocal(),
//         Units.MINUTE,
//       );
//     }

//     // final channel = streamChannel!.channel;
//     // final readList = channel.state?.read.where((read) {
//     //       if (read.user.id == userId) return false;
//     //       return read.lastRead.isAfter(message.createdAt) ||
//     //           read.lastRead.isAtSameMomentAs(message.createdAt);
//     //     }).toList() ??
//     //     [];

//     // final allRead = readList.length >= (channel.memberCount ?? 0) - 1;
//     final hasFileAttachment = false;
//         // message.attachments.any((it) => it.type == 'file');

//     final isThreadMessage = false;
//         // message.parentId != null && message.showInChannel == true;

//     final hasReplies = false;
//     // message.replyCount! > 0;

//     final attachmentBorderRadius = hasFileAttachment ? 12.0 : 14.0;

//     final showTimeStamp = (!isThreadMessage || _isThreadConversation) &&
//         !hasReplies &&
//         (timeDiff >= 1 || !isNextUserSame);

//     final showUsername = !isMyMessage &&
//         (!isThreadMessage || _isThreadConversation) &&
//         !hasReplies &&
//         (timeDiff >= 1 || !isNextUserSame);

//     final showUserAvatar = isMyMessage
//         ? DisplayWidget.gone
//         : (timeDiff >= 1 || !isNextUserSame)
//             ? DisplayWidget.show
//             : DisplayWidget.hide;

//     final showSendingIndicator =
//         isMyMessage && (index == 0 || timeDiff >= 1 || !isNextUserSame);

//     final showInChannelIndicator = !_isThreadConversation && isThreadMessage;
//     final showThreadReplyIndicator = !_isThreadConversation && hasReplies;
//     final isOnlyEmoji = false;

//     final hasUrlAttachment = false;
//         // message.attachments.any((it) => it.titleLink != null);

//     final borderSide =
//         isOnlyEmoji || hasUrlAttachment || (isMyMessage && !hasFileAttachment)
//             ? BorderSide.none
//             : null;

//     final currentUser = user;
//     // final members = StreamChannel.of(context).channel.state?.members ?? [];
//     final members = <Member>[];
//     final currentUserMember =
//         members.firstWhere((e) => e.user?.uid == currentUser.uid);

//     Widget messageWidget = MessageWidget(
//       message: message,
//       reverse: isMyMessage,
//       showReactions: true,
//       // showReactions: !message.isDeleted,
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       showInChannelIndicator: showInChannelIndicator,
//       showThreadReplyIndicator: showThreadReplyIndicator,
//       showUsername: showUsername,
//       showTimestamp: showTimeStamp,
//       showSendingIndicator: showSendingIndicator,
//       showUserAvatar: showUserAvatar,
//       onQuotedMessageTap: (quotedMessageId) async {
//         if (messages.map((e) => e.id).contains(quotedMessageId)) {
//           final index = messages.indexWhere((m) => m.id == quotedMessageId);
//           _scrollController?.scrollTo(
//             index: index + 2, // +2 to account for loader and footer
//             duration: const Duration(seconds: 1),
//             curve: Curves.easeInOut,
//             alignment: 0.1,
//           );
//         } else {
//           // await streamChannel!
//           //     .loadChannelAtMessage(quotedMessageId)
//           //     .then((_) async {
//           //   initialIndex = 21; // 19 + 2 | 19 is the index of the message
//           //   initialAlignment = 0.1;
//           // });
//         }
//       },
//       showEditMessage: isMyMessage,
//       showDeleteMessage: isMyMessage,
//       showThreadReplyMessage: !isThreadMessage,
//       showFlagButton: !isMyMessage,
//       borderSide: borderSide,
//       // onThreadTap: _onThreadTap,
//       onThreadTap: (h){},
//       attachmentBorderRadiusGeometry: BorderRadius.only(
//         topLeft: Radius.circular(attachmentBorderRadius),
//         bottomLeft: isMyMessage
//             ? Radius.circular(attachmentBorderRadius)
//             : Radius.circular(
//                 (timeDiff >= 1 || !isNextUserSame) &&
//                         !(hasReplies || isThreadMessage || hasFileAttachment)
//                     ? 0
//                     : attachmentBorderRadius,
//               ),
//         topRight: Radius.circular(attachmentBorderRadius),
//         bottomRight: isMyMessage
//             ? Radius.circular(
//                 (timeDiff >= 1 || !isNextUserSame) &&
//                         !(hasReplies || isThreadMessage || hasFileAttachment)
//                     ? 0
//                     : attachmentBorderRadius,
//               )
//             : Radius.circular(attachmentBorderRadius),
//       ),
//       attachmentPadding: EdgeInsets.all(hasFileAttachment ? 4 : 2),
//       borderRadiusGeometry: BorderRadius.only(
//         topLeft: const Radius.circular(16),
//         bottomLeft: isMyMessage
//             ? const Radius.circular(16)
//             : Radius.circular(
//                 (timeDiff >= 1 || !isNextUserSame) &&
//                         !(hasReplies || isThreadMessage)
//                     ? 0
//                     : 16,
//               ),
//         topRight: const Radius.circular(16),
//         bottomRight: isMyMessage
//             ? Radius.circular(
//                 (timeDiff >= 1 || !isNextUserSame) &&
//                         !(hasReplies || isThreadMessage)
//                     ? 0
//                     : 16,
//               )
//             : const Radius.circular(16),
//       ),
//       textPadding: EdgeInsets.symmetric(
//         vertical: 8,
//         horizontal: isOnlyEmoji ? 0 : 16.0,
//       ),
//       messageTheme: isMyMessage
//           ? _streamTheme.ownMessageTheme
//           : _streamTheme.otherMessageTheme,
//       // readList: [],
//       // allRead: allRead,
//       onReturnAction: (action) {
//         switch (action) {
//           case ReturnActionType.none:
//             break;
//           case ReturnActionType.reply:
//             FocusScope.of(context).unfocus();
//             widget.onMessageSwiped?.call(message);
//             break;
//         }
//       },
//       onMessageTap: (message) {
//         if (widget.onMessageTap != null) {
//           widget.onMessageTap!(message);
//         }
//         FocusScope.of(context).unfocus();
//       },
//       showPinButton: currentUserMember != null &&
//           widget.pinPermissions.contains(currentUserMember.role),
//     );

//     var child = messageWidget;
//     // if (!message.isDeleted &&
//     //     !message.isSystem &&
//     //     !message.isEphemeral &&
//         if(widget.onMessageSwiped != null) {
//       child = Container(
//         decoration: const BoxDecoration(),
//         clipBehavior: Clip.hardEdge,
//         child: Swipeable(
//           onSwipeEnd: () {
//             FocusScope.of(context).unfocus();
//             widget.onMessageSwiped?.call(message);
//           },
//           backgroundIcon: AppSvgIcon.reply(
//             color: _streamTheme.colorTheme.accentPrimary,
//           ),
//           child: child,
//         ),
//       );
//     }

//     if (!initialMessageHighlightComplete &&
//         widget.highlightInitialMessage) {
//       final colorTheme = _streamTheme.colorTheme;
//       final highlightColor =
//           widget.messageHighlightColor ?? colorTheme.highlight;
//       child = TweenAnimationBuilder<Color?>(
//         tween: ColorTween(
//           begin: highlightColor,
//           end: colorTheme.barsBg.withOpacity(0),
//         ),
//         duration: const Duration(seconds: 3),
//         onEnd: () => initialMessageHighlightComplete = true,
//         builder: (_, color, child) => Container(
//           color: color,
//           child: child,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 4),
//           child: child,
//         ),
//       );
//     }
//     return child;
//   }

//   StreamSubscription? _messageNewListener;

//   @override
//   void initState() {
//     _scrollController = widget.scrollController ?? ItemScrollController();
//     _itemPositionListener =
//         widget.itemPositionListener ?? ItemPositionsListener.create();

//     _getOnThreadTap();
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     // final newStreamChannel = StreamChannel.of(context);
//     _streamTheme = ChatAppTheme.of(context);

//     // if (newStreamChannel != streamChannel) {
//     //   streamChannel = newStreamChannel;
//     //   _messageNewListener?.cancel();
//     //   initialIndex = _initialIndex;
//     //   initialAlignment = _initialAlignment;

//     //   if (_scrollController?.isAttached == true) {
//     //     _scrollController?.jumpTo(
//     //       index: initialIndex,
//     //       alignment: initialAlignment,
//     //     );
//     //   }

//     //   if (_isThreadConversation) {
//     //     streamChannel!.getReplies(widget.parentMessage!.id);
//     //   }
//     // }

//     super.didChangeDependencies();
//   }

//   void _getOnThreadTap() {
    
//   }

//   @override
//   void dispose() {
//     if (!_upToDate) {
//       // streamChannel!.reloadChannel();
//     }
//     _messageNewListener?.cancel();
//     super.dispose();
//   }
// }
