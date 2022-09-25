import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/basic/icon_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child: Icon(
          Icons.home,
          color: Colors.red,
          size: 60.0, // 기본값 24.0
        ),
      ),
    );
  }
}
