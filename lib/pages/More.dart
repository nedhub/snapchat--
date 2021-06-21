import 'package:flutter/material.dart';
import 'package:snapchat/pages/body2.dart';

class More extends StatefulWidget {
  const More({Key? key, required this.videoUrl}) : super(key: key);
  final String videoUrl;

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.thumb_up),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.more_horiz),
            ),
          ]),
      body: Body2(),
    );
  }
}
