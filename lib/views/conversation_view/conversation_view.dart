import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart' as h;
import 'package:my_chat/providers/chat_provider.dart';
import 'package:my_chat/widgets/conversation_input.dart';
import 'package:provider/provider.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/conversation_viewmodel.dart';
import '../../utils/data.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/chat_bubble.dart';
import '../../widgets/view_widget_provider.dart';

class ConversationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: ConversationViewModel(),
      child: ScreenTypeLayout(
        mobile: ConversationViewMobile(),
      ),
    );
  }
}

class ConversationViewMobile extends BaseViewClass<ConversationViewModel> {
  static final Random random = Random();
  final String name = names[random.nextInt(10)];

  @override
  Widget build(BuildContext context, ConversationViewModel model) {
    final chatProvider = Provider.of<BaseChatProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: InkWell(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 10.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/cm${random.nextInt(10)}.jpeg",
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Online",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ResponsiveBuilder(
        builder: (context, sizeInformation) {
          final pageWidth = sizeInformation.localWidgetSize.width;
          final pageHeight = sizeInformation.localWidgetSize.height;
          return ValueListenableBuilder(
            valueListenable: model.conversation.listenable(),
            builder: (BuildContext context, box, widget) {
              return Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    Flexible(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        itemCount: model.conversation.length,
                        reverse: true,
                        itemBuilder: (BuildContext context, int index) {
                          Map allMsg = model.conversation.toMap();
                          Map msg = allMsg[index];
                          return ChatBubble(
                            // message: msg['type'] == "text"
                            //     ? messages[random.nextInt(10)]
                            //     : "assets/cm${random.nextInt(10)}.jpeg",
                            message: msg['message'],
                            username: msg["username"],
                            time: msg["time"],
                            type: msg['type'],
                            replyText: msg["replyText"],
                            isMe: msg['isMe'],
                            isGroup: msg['isGroup'],
                            isReply: msg['isReply'],
                            replyName: name,
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
//                height: 140,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[500],
                                offset: Offset(0.0, 1.5),
                                blurRadius: 4.0,
                              ),
                            ],
                          ),
                          constraints: BoxConstraints(
                            maxHeight: 190,
                          ),
                          child: ConversationInputWidget(
                            chatProvider: chatProvider,
                          )),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
