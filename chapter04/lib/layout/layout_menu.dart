import 'package:flutter/material.dart';
import 'package:flutter_basic/layout/align_page.dart';
import 'package:flutter_basic/layout/card_page.dart';
import 'package:flutter_basic/layout/center_page.dart';
import 'package:flutter_basic/layout/expanded_page.dart';
import 'package:flutter_basic/layout/padding_page.dart';
import 'package:flutter_basic/layout/safearea_page.dart';
import 'package:flutter_basic/layout/sizedbox_page.dart';
import 'package:flutter_basic/main.dart';

class LayoutMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.3 위치, 정렬, 크기를 위한 위젯'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/layout/layout_menu.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Center'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CenterPage()),
              );
            },
          ),
          ListTile(
            title: Text('Padding'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaddingPage()),
              );
            },
          ),
          ListTile(
            title: Text('Align'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlignPage()),
              );
            },
          ),
          ListTile(
            title: Text('Expanded'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpandedPage()),
              );
            },
          ),
          ListTile(
            title: Text('SizedBox'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SizedBoxPage()),
              );
            },
          ),
          ListTile(
            title: Text('Card'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardPage()),
              );
            },
          ),
          ListTile(
            title: Text('SafeArea'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafeAreaPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
