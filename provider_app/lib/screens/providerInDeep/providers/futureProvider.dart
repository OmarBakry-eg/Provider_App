import 'package:flutter/material.dart';

Future<FutureModel> getNewData() async {
  await Future.delayed(
    Duration(
      seconds: 1,
    ),
  );
  return FutureModel(value: 'Some Data');
}

class FutureModel with ChangeNotifier {
  String value = 'Hello';
  FutureModel({this.value});
  Future<void> changeValue() async {
    await Future.delayed(Duration(seconds: 1));
    value = 'Future Value';
    print(value);
    notifyListeners();
  }
}
