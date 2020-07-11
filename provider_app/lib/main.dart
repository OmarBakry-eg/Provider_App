import 'package:provider/provider.dart';
import 'app.dart';
import 'package:flutter/material.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}
