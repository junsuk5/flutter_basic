import 'package:flutter/material.dart';
import 'package:flutter_basic/dialog/alert_dialog_page.dart';
import 'package:flutter_basic/dialog/date_picker_page.dart';
import 'package:flutter_basic/dialog/time_picker_page.dart';

class DialogMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4.7 다이얼로그'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('AlertDialog'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertDialogPage()),
              );
            },
          ),
          ListTile(
            title: Text('DatePicker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DatePickerPage()),
              );
            },
          ),
          ListTile(
            title: Text('TimePicker'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimePickerPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
