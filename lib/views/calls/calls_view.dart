import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/providers.dart';
import '../../models/call_log/call_log.dart';
import '../../models/enums.dart';

class CallsView extends ConsumerWidget {
  CallsView({
    Key? key,
    // required this.app,
    required this.cs,
  }) : super(key: key);

  // final AppProvider app;
  final BoxConstraints cs;

  Widget getIcon(CallLogStatus callStatus) {
    Icon _icon;
    double _iconSize = 15;

    switch (callStatus) {
      case CallLogStatus.dialled:
        _icon = Icon(
          Icons.call_made,
          size: _iconSize,
          color: Colors.green,
        );
        break;

      case CallLogStatus.missed:
        _icon = Icon(
          Icons.call_missed,
          color: Colors.red,
          size: _iconSize,
        );
        break;

      default:
        _icon = Icon(
          Icons.call_received,
          size: _iconSize,
          color: Colors.grey,
        );
        break;
    }

    return Container(
      margin: EdgeInsets.only(right: 5),
      child: _icon,
    );
  }

  @override
  Widget build(BuildContext context, ref) {
    final auth = ref.watch(authProvider);
    final app = auth.app;
    return FutureBuilder<List<CallLog>>(
      // future: AppWriteCallStore.userCallLogs(app.db, auth.user!.uid),
      future: () async {
        return <CallLog>[];
      }(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          if (snapshot.data!.length > 0) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                var _log = snapshot.data![i];
                bool hasDialled = _log.status == CallLogStatus.dialled;
                return InkWell(
                  onLongPress: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Delete this Log?"),
                      content:
                          Text("Are you sure you want to delete this log?"),
                      actions: [
                        FlatButton(
                          child: Text("YES"),
                          onPressed: () async {
                            Navigator.pop(context);
                            // AppWriteCallStore.deleteUserCallLog(
                            //     app.db, _log.id);
                          },
                        ),
                        FlatButton(
                          child: Text("NO"),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: ((_log.callerPic != null &&
                                                _log.callerPic!.isNotEmpty) &&
                                            (_log.receiverPic != null &&
                                                _log.receiverPic!.isNotEmpty))
                                        ? NetworkImage(
                                            (hasDialled
                                                ? _log.receiverPic!
                                                : _log.callerPic!),
                                          )
                                        : null,
                                    maxRadius: 30,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text((hasDialled
                                              ? _log.receiverPic
                                              : _log.callerPic) ??
                                          ""),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          getIcon(_log.status),
                                          Text(
                                            DateFormat("dd MMMM yyy hh:mm aa")
                                                .format(_log.createdAt),
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey.shade500,
                                                fontStyle: FontStyle.italic),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
          return EmptyCallLogs();
        }
        return EmptyCallLogs();
      },
    );
  }
}

class EmptyCallLogs extends StatelessWidget {
  const EmptyCallLogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).copyWith().size.height -
          MediaQuery.of(context).copyWith().size.height / 5,
      width: MediaQuery.of(context).copyWith().size.width,
      child: Column(
        children: const [
          Text(
            "This is where all your call logs are listed",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Call people with just one click",
            style: TextStyle(fontSize: 16),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
