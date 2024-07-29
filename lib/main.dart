import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello World Travel Inc",
        home: Scaffold(
            appBar: AppBar(
                title: Text("Hello World Travel App"),
                backgroundColor: Colors.blueGrey),
            body: SingleChildScrollView(
                child: Center(
                    child: Column(children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hello World Travel',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Discover the World",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                    'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                    height: 350,
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () => contactUs(context),
                      child: Text('Contact Us'))),
            ])))));
  } //Build
} //MyApp

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Contact Us'),
            content: Text('Mail us at Hello@world.com'),
            actions: <Widget>[
              TextButton(
                  child: Text('Close'),
                  onPressed: () => Navigator.of(context).pop())
            ]);
      });
}
