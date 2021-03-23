import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assigment/custom_text.dart';

class MainPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageBodyState();
  }
}

class _MainPageBodyState extends State<MainPageBody> {
  int _counter = 0;
  String _textString = "Tap button!";

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText(
            _textString,
          ),
          ElevatedButton(
            child: Text('Tap'),
            onPressed: () {
              setState(() {
                _counter++;
                _textString = 'You tapped! $_counter';
              });
            },
          ),
        ],
      ),
    );
  }
}
