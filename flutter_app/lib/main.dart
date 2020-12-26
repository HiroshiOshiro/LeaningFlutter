import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'Navigation',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScrreen(),
      },
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
                Navigator.pushNamed(context, '/second');
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
