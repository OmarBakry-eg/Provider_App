import 'package:flutter/material.dart';

void mainRaisedNavigation(BuildContext context, routeName) {
  Navigator.pushNamed(context, routeName);
}

void pop(BuildContext context) {
  Navigator.pop(context);
}
