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
          title: Text('Snack Bar'),
        ),
        body: Builder(
          builder: (context) => Center(
            child: RaisedButton(
                child: Text('Show Snack Bar'),
                // onPressed: () {
                //   Navigator.pushNamed(context, '/second');
                // }),
                onPressed: () {
                  Scaffold.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text('snack')));
                }),
          ),
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
