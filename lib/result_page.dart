import 'package:flutter/material.dart';
import 'package:life_expectancy/calculate.dart';
import 'package:life_expectancy/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
                child: Text(
              style: TextStyle(fontSize: 40),
              Calculate(_userData).calculation().round().toString() + ' YEARS',
            )),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(style: TextStyle(fontSize: 40), 'Back'),
            ),
          ),
        ],
      ),
    );
  }
}
