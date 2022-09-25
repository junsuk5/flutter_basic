import 'package:flutter/material.dart';
import 'package:flutter_basic/event/gesture_page.dart';

class EventMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.8 이벤트'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('GestureDetector / InkWell'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GesturePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
