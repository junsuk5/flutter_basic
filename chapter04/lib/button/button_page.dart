import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('ElevatedButton'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('TextButton'),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.red, // 아이콘 색상
              iconSize: 100.0, // 기본값 24.0
              onPressed: () {},
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
