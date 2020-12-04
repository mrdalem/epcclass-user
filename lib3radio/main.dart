import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bulbColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.lightbulb_outline,
                size: 100,
                color: bulbColor,
              ),
              Container(
                width: 150,
                child: Row(
                  children: <Widget>[
                    Radio(
                        value: Colors.red,
                        groupValue: bulbColor,
                        onChanged: (val) {
                          bulbColor = val;
                          setState(() {});
                        }),
                    Text(
                      'Red',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ),
              Container(
                width: 150,
                child: Row(
                  children: <Widget>[
                    Radio(
                        value: Colors.blue,
                        groupValue: bulbColor,
                        onChanged: (val) {
                          bulbColor = val;
                          setState(() {});
                        }),
                    Text('Blue', style: TextStyle(fontSize: 24))
                  ],
                ),
              ),
              Container(
                width: 150,
                child: Row(
                  children: <Widget>[
                    Radio(
                        value: Colors.green,
                        groupValue: bulbColor,
                        onChanged: (val) {
                          bulbColor = val;
                          setState(() {});
                        }),
                    Text('Green', style: TextStyle(fontSize: 24))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
