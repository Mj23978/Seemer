import 'package:flutter/material.dart';

import '../../config/responsive/responsive_builder.dart';
import '../../config/responsive/screen_type_layout.dart';
import '../../providers/viewmodels/contacts_viewmodel.dart';
import '../../utils/data.dart';
import '../../widgets/base_view_class.dart';
import '../../widgets/view_widget_provider.dart';

class ContactsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewWidgetProvider(
      viewModel: ContactsViewModel(),
      child: ScreenTypeLayout(
        mobile: ContactsViewMobile(),
      ),
    );
  }
}

class ContactsViewMobile extends BaseViewClass<ContactsViewModel> {
  @override
  Widget build(BuildContext context, ContactsViewModel model) {
    return Scaffold(
      appBar: AppBar(
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
            itemCount: friends.length,
            itemBuilder: (BuildContext context, int index) {
              Map friend = friends[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      friend['dp'],
                    ),
                    radius: 25,
                  ),
                  contentPadding: EdgeInsets.all(0),
                  title: Text(friend['name']),
                  subtitle: Text(friend['status']),
                  trailing: friend['isAccept']
                      ? FlatButton(
                          child: Text(
                            "Unfollow",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.grey,
                          onPressed: () {},
                        )
                      : FlatButton(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
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
