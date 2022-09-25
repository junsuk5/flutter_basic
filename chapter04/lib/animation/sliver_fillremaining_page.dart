import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class SliverFillRemainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.asset(
                'assets/sample.jpg',
                fit: BoxFit.cover,
              ),
            ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    launchURL(
                        'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/animation/sliver_fillremaining_page.dart');
                  },
                  icon: Image.asset('assets/github_icon.png'),
                ),
              ],
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('center'),
            ),
          ),
        ],
      ),
    );
  }
}
