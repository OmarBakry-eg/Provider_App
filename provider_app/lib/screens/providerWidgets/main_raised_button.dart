import 'package:flutter/material.dart';

class MainRaisedButtons extends StatelessWidget {
  final Function function;
  final String text;
  MainRaisedButtons({@required this.function, @required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 50,
      child: RaisedButton(
        onPressed: function,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
