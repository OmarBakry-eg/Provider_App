import 'package:flutter/cupertino.dart';

class SelectorProvider with ChangeNotifier {
  String _prov1 = 'Selector<SelectorProvider, String>';
  String _coding = 'click to show code';
  String get prov1 => _prov1;
  String get coding => _coding;

  void changeName(String name) {
    _prov1 = name;
    notifyListeners();
  }

  void changeCode(String code) {
    _coding = code;
    notifyListeners();
  }
}
