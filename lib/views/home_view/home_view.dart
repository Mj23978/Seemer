import 'package:flutter/material.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/home_viewmodel.dart';
import '../../utils/data.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/post_item.dart';
import '../../widgets/view_widget_provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: HomeViewModel(),
      child: ScreenTypeLayout(
        mobile: HomeViewMobile(),
      ),
    );
  }
}

class HomeViewMobile extends BaseViewClass<HomeViewModel> {
  @override
  Widget build(BuildContext context, model) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feeds"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ResponsiveBuilder(
        builder: (ctx, size) {
          final localHeight = size.localWidgetSize.height;
          final localWidth = size.localWidgetSize.width;
          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
              Map post = posts[index];
              return PostItem(
                img: post['img'],
                name: post['name'],
                dp: post['dp'],
                time: post['time'],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
