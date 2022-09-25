import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class TabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                launchURL(
                    'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/multi/tab_page.dart');
              },
              icon: Image.asset('assets/github_icon.png'),
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3'),
            ],
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              Container(color: Colors.yellow,),
              Container(color: Colors.orange,),
              Container(color: Colors.red,),
            ]),
      ),
    );
  }
}
