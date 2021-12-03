import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_provider.dart';
import '../../core/providers.dart';
import '../../models/user/user.dart';
import '../auth/auth_view.dart';
import '../calls/calls_view.dart';
import '../home/home_page.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';

class HomeTemplateView extends ConsumerWidget {

  HomeTemplateView({
    Key? key
  }) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget homeChild(AppProvider app, BoxConstraints cs) {
    final index = app.selectedPage;
    print(index);
    if (index == 0) {
      return HomeView(cs: cs);
    } else if (index == 1) {
      return CallsView(cs: cs,);
    } else if (index == 2) {
      return HomePage();
    }
    return ProfileView();
  }

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    final app = ref.watch(appProvider);
    return FutureBuilder<User>(
      future: auth.login(),
      builder: (context, snapshot) {
        if (!snapshot.hasData && !(snapshot.connectionState == ConnectionState.active)) {
          if (snapshot.connectionState == ConnectionState.active) {
            return AuthView();
          }
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        return LayoutBuilder(builder: (context, cs) {
          return Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text("Feeds"),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.filter_list,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: app.selectedPage,
              onTap: (value) {
                app.changePage(value);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.messenger), label: "Chats"),
                BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
                BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage("assets/images/user_2.png"),
                  ),
                  label: "Profile",
                ),
              ],
            ),
            resizeToAvoidBottomInset: true,
            floatingActionButton: app.selectedPage == 2 ? null : FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blueAccent,
              child: const Icon(
                Icons.person_add_alt_1,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.white,
            body: homeChild(app, cs),
          );
        });
      }
    );
  }
}
