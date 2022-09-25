import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class ScrollAndBottomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('상단 스크롤, 하단 버튼'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/realworldui/scroll_and_bottom_button.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: List.generate(100, (i) => i)
                  .map((i) => ListTile(title: Text('$i')))
                  .toList(),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Container(
              height: 50,
              color: Colors.orange,
              child: Center(
                child: InkWell(
                  child: Text("Button"),
                  onTap: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
