import 'package:flutter/material.dart';
import 'package:snapchat/pages/stories_page.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      // index: pageIndex,
      children: [
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
        StoriesPage(),
      ],
    );
  }
}
