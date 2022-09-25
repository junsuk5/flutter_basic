import 'package:flutter/material.dart';
import 'package:flutter_basic/button/fab_button_page.dart';
import 'package:flutter_basic/button/flat_button_page.dart';
import 'package:flutter_basic/button/icon_button_page.dart';
import 'package:flutter_basic/button/raised_button_page.dart';
import 'package:flutter_basic/main.dart';

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.4 버튼 계열 위젯'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/button/button_menu.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ElevatedButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ElevatedButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('TextButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('IconButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text('FloatingActionButton'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FloatingActionButtonPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
