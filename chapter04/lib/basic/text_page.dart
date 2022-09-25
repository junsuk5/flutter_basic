import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/basic/text_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child:
        Text(
          'Hello World',
          style: TextStyle(
            fontSize: 40.0,               // 글자 크기
            fontStyle: FontStyle.italic,  // 이탤릭체
            fontWeight: FontWeight.bold,  // 볼드체
            color: Colors.red,            // 색상
            letterSpacing: 4.0,           // 자간
          ),
        ),
      ),
    );
  }
}
