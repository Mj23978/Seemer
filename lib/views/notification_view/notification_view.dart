import 'package:flutter/material.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/notification_viewmodel.dart';
import '../../utils/data.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/view_widget_provider.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: NotificationViewModel(),
      child: ScreenTypeLayout(
        mobile: NotificationViewMobile(),
      ),
    );
  }
}

class NotificationViewMobile extends BaseViewClass<NotificationViewModel> {
  @override
  Widget build(BuildContext context, NotificationViewModel model) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
        ),
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
        builder: (context, sizeInformation) {
          final pageWidth = sizeInformation.localWidgetSize.width;
          final pageHeight = sizeInformation.localWidgetSize.height;
          return ListView.separated(
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
            itemCount: notifications.length,
            itemBuilder: (BuildContext context, int index) {
              Map notif = notifications[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      notif['dp'],
                    ),
                    radius: 25,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  title: Text(notif['notif']),
                  trailing: Text(
                    notif['time'],
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 11,
                    ),
                  ),
                  onTap: () {},
                ),
              );
            },
          );
        },
      ),
    );
  }
}
