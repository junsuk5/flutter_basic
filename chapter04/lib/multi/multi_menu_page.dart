import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';
import 'package:flutter_basic/multi/bottom_navigation_page.dart';
import 'package:flutter_basic/multi/column_page.dart';
import 'package:flutter_basic/multi/container_page.dart';
import 'package:flutter_basic/multi/gridview_page.dart';
import 'package:flutter_basic/multi/listview_page.dart';
import 'package:flutter_basic/multi/pageview_page.dart';
import 'package:flutter_basic/multi/row_page.dart';
import 'package:flutter_basic/multi/single_child_scroll_page.dart';
import 'package:flutter_basic/multi/stack_page.dart';
import 'package:flutter_basic/multi/tab_page.dart';

class MultiMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.2 화면 배치를 위한 위젯'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/multi/multi_menu_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
          ),
          ListTile(
            title: Text('Column'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColumnPage()),
              );
            },
          ),
          ListTile(
            title: Text('Row'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RowPage()),
              );
            },
          ),
          ListTile(
            title: Text('Stack'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StackPage()),
              );
            },
          ),
          ListTile(
            title: Text('SingleChildScrollView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SingleChildScrollViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('ListView / ListTile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('GridView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('PageView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('AppBar / TabBar / Tab / TabBarView'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabPage()),
              );
            },
          ),
          ListTile(
            title: Text('BottomNavigationBar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavigationPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
