import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation',
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('1番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('次の画面を開く'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScrreen()),
                );
              }),
        ),
      );
}

class SecondScrreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('2番目のルート'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('戻る'),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      );
}
