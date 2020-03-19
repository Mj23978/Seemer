import 'package:flutter/material.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/chats_viewmodel.dart';
import '../../utils/data.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/chat_item.dart';
import '../../widgets/view_widget_provider.dart';

class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: ChatsViewModel(),
      child: ScreenTypeLayout(
        mobile: ChatsViewMobile(),
      ),
    );
  }
}

class ChatsViewMobile extends BaseViewClass<ChatsViewModel> {
  @override
  Widget build(BuildContext context, ChatsViewModel model) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizeInformation) {
          final pageWidth = sizeInformation.localWidgetSize.width;
          final pageHeight = sizeInformation.localWidgetSize.height;
          return Chats();
        },
      ),
    );
  }
}

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
//        elevation: 4,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration.collapsed(
            hintText: 'Search',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).accentColor,
          labelColor: Theme.of(context).accentColor,
          unselectedLabelColor: Theme.of(context).textTheme.caption.color,
          isScrollable: false,
          tabs: <Widget>[
            Tab(
              text: "Message",
            ),
            Tab(
              text: "Groups",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView.separated(
            padding: EdgeInsets.all(10),
            separatorBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Divider(),
                ),
              );
            },
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              Map chat = chats[index];
              return ChatItem(
                dp: chat['dp'],
                name: chat['name'],
                isOnline: chat['isOnline'],
                counter: chat['counter'],
                msg: chat['msg'],
                time: chat['time'],
              );
            },
          ),
          ListView.separated(
            padding: EdgeInsets.all(10),
            separatorBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Divider(),
                ),
              );
            },
            itemCount: groups.length,
            itemBuilder: (BuildContext context, int index) {
              Map chat = groups[index];
              return ChatItem(
                dp: chat['dp'],
                name: chat['name'],
                isOnline: chat['isOnline'],
                counter: chat['counter'],
                msg: chat['msg'],
                time: chat['time'],
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
