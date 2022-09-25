import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class FirstPage extends StatelessWidget {
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
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/navigation/stateless_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: ElevatedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final person = Person('홍길동', 20);
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage(person: person)),
          );

          print(result);
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({Key key, @required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: ElevatedButton(
        child: Text('이전 페이지로'),
        onPressed: () {
          Navigator.pop(context, 'ok');
        },
      ),
    );
  }
}

