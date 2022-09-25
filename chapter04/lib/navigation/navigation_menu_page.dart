import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';
import 'package:flutter_basic/navigation/stateful_page.dart';
import 'package:flutter_basic/navigation/stateless_page.dart';

class NavigationMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('6. 네비게이션'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/navigation/navigation_menu_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('StatelessWidget의 네비게이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
          ),
          ListTile(
            title: Text('StatefulWidget의 네비게이션'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstStatefulPage()),
              );
            },
          ),
          ListTile(
            title: Text('routes: FirstPage'),
            onTap: () {
              Navigator.pushNamed(context, '/first');
            },
          ),
          ListTile(
            title: Text('routes: SecondPage'),
            onTap: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
    );
  }
}
