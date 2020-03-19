import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/main_viewmodel.dart';
import '../../views/chats_view/chats_view.dart';
import '../../views/contacts_view/contacts_view.dart';
import '../../views/home_view/home_view.dart';
import '../../views/notification_view/notification_view.dart';
import '../../views/profile_view/profile_view.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/icon_badge.dart';
import '../../widgets/view_widget_provider.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: MainViewModel(),
      child: ScreenTypeLayout(
        mobile: MainViewMobile(),
      ),
    );
  }
}

class MainViewMobile extends BaseViewClass<MainViewModel> {
  @override
  Widget build(BuildContext context, MainViewModel model) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizeInformation) {
          final pageWidth = sizeInformation.localWidgetSize.width;
          final pageHeight = sizeInformation.localWidgetSize.height;
          return MainScreen();
        },
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
//        children: <Widget>[
//          ChatsView(),
//          ContactsView(),
//          HomeView(),
//          NotificationView(),
//          ProfileView(),
//        ],
        children: <Widget>[
          ThemeConsumer(child: ChatsView()),
          ThemeConsumer(child: ContactsView()),
          ThemeConsumer(child: HomeView()),
          ThemeConsumer(child: NotificationView()),
          ThemeConsumer(child: ProfileView()),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Theme.of(context).primaryColor,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Theme.of(context).accentColor,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Colors.grey[500]),
              ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: IconBadge(
                icon: Icons.notifications,
              ),
              title: Container(height: 0.0),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Container(height: 0.0),
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
