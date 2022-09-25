import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL('https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/layout/card_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4.0, // 그림자 깊이
          child: Container(
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
