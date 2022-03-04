import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
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
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('—'),
                  onPressed: _decrementCounter,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                Text(" "),
                ElevatedButton(
                  child: const Text('+'),
                  onPressed: _incrementCounter,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                      //maximumSize: Size(width, height),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            TextButton(style: TextButton.styleFrom(
            primary: Colors.grey),
            onPressed: _resetCounter, child: const Text("Сбросить")),
          ],
        ),
      ),
    );
  }
}
