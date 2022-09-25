import 'package:flutter/material.dart';
import 'package:flutter_basic/main.dart';

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              launchURL(
                  'https://github.com/junsuk5/flutter_basic/blob/3d00fee10e1c353df822cce0db6fa027958c251d/chapter04/lib/dialog/date_picker_page.dart');
            },
            icon: Image.asset('assets/github_icon.png'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Future<DateTime> selectedDate = showDatePicker(
                context: context,
                initialDate: DateTime.now(), // 초깃값
                firstDate: DateTime(2018), // 시작일
                lastDate: DateTime(2030), // 마지막일
                builder: (BuildContext context, Widget child) {
                  return Theme(
                    data: ThemeData.dark(), // 다크테마
                    child: child,
                  );
                },
              );

              selectedDate.then((dateTime) {
                setState(() {
                  _selectedTime = dateTime;
                });
              });
            },
            child: Text('Date Picker'),
          ),
          Text('$_selectedTime'),
        ],
      ),
    );
  }
}
