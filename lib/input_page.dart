import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/result_page.dart';
import 'package:life_expectancy/user_data.dart';

import 'column.dart';
import 'container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? selectGender;
  double smokingCigarette = 15;
  double gymDay = 0;
  int size = 170;
  int kilogram = 70;
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Life Expectancy',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Row(children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'Size',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            size.toString(),
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      size++;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 15,
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        size--;
                                      });
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 15,
                                    )),
                              )
                            ]),
                      ]),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            'Kilogram',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            kilogram.toString(),
                            style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      kilogram++;
                                    });
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    size: 15,
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 36,
                                child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        kilogram--;
                                      });
                                    },
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 15,
                                    )),
                              )
                            ]),
                      ]),
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How Many Days a Week Do You Exercise?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      gymDay.round().toString(),
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: gymDay,
                      onChanged: (double newValue) {
                        setState(() {
                          gymDay = newValue;
                        });
                      },
                    )
                  ],
                ),
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'How Many Cigarettes Do You Smoke Per Day?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      smokingCigarette.round().toString(),
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      min: 0,
                      max: 40,
                      //divisions: 30,
                      value: smokingCigarette,
                      onChanged: (double newValue) {
                        setState(() {
                          smokingCigarette = newValue;
                        });
                      },
                    )
                  ],
                ),
                margin: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = 'WOMEN';
                        });
                      },
                      child: MyContainer(
                        color: selectGender == 'WOMEN'
                            ? Colors.white54
                            : Colors.white,
                        child: MyColumNameIcon(
                            gender: "WOMEN", icon: FontAwesomeIcons.venus),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectGender = 'MAN';
                        });
                      },
                      child: MyContainer(
                        color: selectGender == 'MAN'
                            ? Colors.white54
                            : Colors.white,
                        child: MyColumNameIcon(
                            gender: 'MAN', icon: FontAwesomeIcons.mars),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(UserData(
                            kilogram: kilogram,
                            size: size,
                            gymDay: gymDay,
                            selectGender: selectGender,
                            smokingCigarette: smokingCigarette))));
              },
              child: Text('Calculate'),
            )
          ],
        ));
  }
}
