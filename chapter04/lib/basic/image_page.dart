import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/basic/image_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Center(
        child: Image.network('https://t1.daumcdn.net/cfile/tistory/9994463B5C2B89F731')
      ),
    );
  }
}
