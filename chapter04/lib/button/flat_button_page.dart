import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class TextButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextButtonPage'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/button/flat_button_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          child: Text('TextButton'),
          onPressed: () {},
        ),
      ),
    );
  }
}
