import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:showcaseview/showcase_widget.dart';

class FinalShowcasePage extends StatelessWidget {
  static final routeName = '/showcase/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowCaseWidget(builder: Builder(builder: (context) => MailPage())),
    );
  }
}

class MailPage extends StatefulWidget {
  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  GlobalKey _three = GlobalKey();
  GlobalKey _four = GlobalKey();
  GlobalKey _five = GlobalKey();

  @override
  void initState() {
    super.initState();
    //Start showcase view after current widget frames are drawn.
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_one, _two, _three, _four, _five]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Showcase(
                                  key: _one,
                                  description: 'Tap to see menu options',
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.black45,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Search email',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Showcase(
                            key: _two,
                            title: 'Profile',
                            description: 'Tap to see profile',
                            showcaseBackgroundColor: Colors.blueAccent,
                            textColor: Colors.white,
                            shapeBorder: CircleBorder(),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'PRIMARY',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Detail(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Showcase(
                  key: _three,
                  description: 'Tap to check mail',
                  disposeOnTap: true,
                  onTargetClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Detail(),
                      ),
                    ).then((_) {
                      setState(() {
                        ShowCaseWidget.of(context)
                            .startShowCase([_four, _five]);
                      });
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 6, right: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Showcase.withWidget(
                                key: _four,
                                height: 50,
                                width: 140,
                                shapeBorder: CircleBorder(),
                                container: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue[200],
                                      ),
                                      child: Center(
                                        child: Text('S'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Your sender\'s profile ',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue[200],
                                    ),
                                    child: Center(
                                      child: Text('S'),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 8)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Slack',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    'Flutter Notification',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Hi, you have new Notification',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '1 Jun',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MailTile(
              Mail(
                sender: 'Medium',
                sub: 'Showcase View',
                msg: 'Check new showcase View',
                date: '25 May',
                isUnread: false,
              ),
            ),
            MailTile(
              Mail(
                sender: 'Quora',
                sub: 'New Question for you',
                msg: 'Hi, There is new question for you',
                date: '22 May',
                isUnread: false,
              ),
            ),
            MailTile(
              Mail(
                  sender: 'Google',
                  sub: 'Flutter 1.5',
                  msg: 'We have launched Flutter 1.5',
                  date: '20 May',
                  isUnread: true),
            ),
            MailTile(
              Mail(
                  sender: 'Simform',
                  sub: 'Credit card Plugin',
                  msg: 'Check out our credit card plugin',
                  date: '19 May',
                  isUnread: true),
            ),
            MailTile(
              Mail(
                sender: 'Flutter',
                sub: 'Flutter is Future',
                msg: 'Flutter laucnhed for Web',
                date: '18 Jun',
                isUnread: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Showcase(
        key: _five,
        title: 'Compose Mail',
        description: 'Click here to compose mail',
        shapeBorder: CircleBorder(),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              ShowCaseWidget.of(context)
                  .startShowCase([_one, _two, _three, _four, _five]);
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class Mail {
  String sender;
  String sub;
  String msg;
  String date;
  bool isUnread;

  Mail({
    this.sender,
    this.sub,
    this.msg,
    this.date,
    this.isUnread,
  });
}

class MailTile extends StatelessWidget {
  final Mail mail;

  MailTile(this.mail);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 6, right: 16, top: 8, bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[200],
                  ),
                  child: Center(
                    child: Text(mail.sender[0]),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 8)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      mail.sender,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      mail.sub,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      mail.msg,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                mail.date,
                style: TextStyle(
                  fontWeight:
                      mail.isUnread ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Icon(
                Icons.star_border,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final GlobalKey _one = GlobalKey();
  BuildContext myContext;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 200),
          () => ShowCaseWidget.of(myContext).startShowCase([_one]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
        builder: (context) {
          myContext = context;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: <Widget>[
                  Showcase(
                    key: _one,
                    title: 'Title',
                    description: 'Desc',
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Flutter Notification',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Hi, you have new Notification from flutter group, open slack and check it out',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                      children: [
                        TextSpan(text: 'Hi team,\n\n'),
                        TextSpan(
                            text:
                                'As some of you know, we’re moving to Slack for our internal team communications. Slack is a messaging app where we can talk, share files, and work together. It also connects with tools we already use, like [add your examples here], plus 900+ other apps.\n\n'),
                        TextSpan(
                            text: 'Why are we moving to Slack?\n\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        TextSpan(
                            text:
                                'We want to use the best communication tools to make our lives easier and be more productive. Having everything in one place will help us work together better and faster, rather than jumping around between emails, IMs, texts and a bunch of other programs. Everything you share in Slack is automatically indexed and archived, creating a searchable archive of all our work.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
