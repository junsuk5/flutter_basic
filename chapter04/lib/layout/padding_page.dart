import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL('https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/layout/padding_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
