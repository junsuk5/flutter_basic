import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class FirstStatefulPage extends StatefulWidget {
  @override
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {

  @override
  void initState() {
    super.initState();
    print('FirstPage initState()');
  }


  @override
  void dispose() {
    super.dispose();
    print('FirstPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/navigation/stateful_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondStatefulPage()),
          );
        },
      ),
    );
  }
}

class SecondStatefulPage extends StatefulWidget {
  @override
  _SecondStatefulPageState createState() => _SecondStatefulPageState();
}

class _SecondStatefulPageState extends State<SecondStatefulPage> {

  @override
  void initState() {
    super.initState();
    print('SecondPage initState()');
  }


  @override
  void dispose() {
    super.dispose();
    print('SecondPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

