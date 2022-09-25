import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class GesturePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GestureDetector'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/event/gesture_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print('GestureDetector 클릭!!');
              },
              child: Text('클릭 Me!!'),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                print('InkWell 클릭!!');
              },
              child: Text('클릭 Me!!'),
            ),
          ],
        ),
      ),
    );
  }
}
