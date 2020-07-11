import 'package:flutter/material.dart';

class StreamModel with ChangeNotifier {
  String randomValue = 'Hello';
  StreamModel({this.randomValue});
  void changeValue() {
    randomValue = 'Stream Finished';
    notifyListeners();
    print(randomValue);
  }
}

Stream<StreamModel> getMyStreamModel() {
  return Stream<StreamModel>.periodic(
      Duration(seconds: 1), (x) => StreamModel(randomValue: '$x')).take(10);
}
