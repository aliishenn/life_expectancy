import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(child: Text('Beklenen Yasam Suresi')),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Back!'),
            ),
          ),
        ],
      ),
    );
  }
}
