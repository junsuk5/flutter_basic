import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class CheckRadioSwitchPage extends StatefulWidget {
  @override
  _CheckRadioSwitchPageState createState() => _CheckRadioSwitchPageState();
}

class _CheckRadioSwitchPageState extends State<CheckRadioSwitchPage> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox / Radio / Switch'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/input/check_switch_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value;
                  });
                },
              ),
              SizedBox(
                height: 40,
              ),
              Switch(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
