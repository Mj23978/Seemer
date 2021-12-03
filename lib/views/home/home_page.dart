import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/extensions.dart';
import '../../core/providers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  // RealtimeSubscription? subscription;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context,ref, _) {
      final app = ref.watch(appProvider);
      // if (!app.subscribed) {
      //   subscription = app.subscribe();
      // } else {
      //   subscription = app.subscription;
      // }
      return Scaffold(
        body: StreamBuilder(
          stream: StreamController().stream,
          builder: (context, snapshot) {
            return ListView(children: [
              ...app.items.map((item) => ListTile(
                    title: Text(""),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () async {
                        // await app.db.deleteDocument(
                        //   collectionId: Constants.callLogsCollectionID,
                        //   documentId: item['\$id'],
                        // );
                      },
                    ),
                  )),
            ]);
          }
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // dialog to add new item
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Add new item'),
                content: TextField(
                  controller: _nameController,
                ),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () async {
                      // add new item
                      final name = _nameController.text;
                      if (name.isNotEmpty) {
                        _nameController.clear();
                        // try {
                        //   await app.db.createDocument(
                        //       collectionId: Constants.callLogsCollectionID,
                        //       data: CallLog(
                        //               id: "",
                        //               status: CallLogStatus.dialled,
                        //               createdAt: DateTime.now(),
                        //               callerPic: name)
                        //           .toJson()
                        //           .normalizeSend(),
                        //       read: ['*'],
                        //       write: ['*']);
                        // } on AppwriteException catch (e) {
                        //   print(e.message);
                        // }
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
