import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView with Checkboxes',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Musical Genres',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Card(
                      child: CheckboxGroup(
                          padding: EdgeInsets.only(top: 20),
                          labels: <String>[
                            "Rock",
                            "Electronic",
                            "Blues",
                          ],
                          checkColor: Colors.red,
                          activeColor: Colors.white,
                          onSelected: (List<String> checked) =>
                              print(checked.toString())),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    child: Card(
                      child: CheckboxGroup(
                          padding: EdgeInsets.only(top: 20),
                          labels: <String>[
                            "Pop",
                            "Jazz",
                            "Hip hop",
                          ],
                          checkColor: Colors.red,
                          activeColor: Colors.white,
                          onSelected: (List<String> checked) =>
                              print(checked.toString())),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 200,
                    child: Card(
                      child: CheckboxGroup(
                          padding: EdgeInsets.only(top: 20),
                          labels: <String>[
                            "Country",
                            "Latin",
                          ],
                          checkColor: Colors.red,
                          activeColor: Colors.white,
                          onSelected: (List<String> checked) =>
                              print(checked.toString())),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
