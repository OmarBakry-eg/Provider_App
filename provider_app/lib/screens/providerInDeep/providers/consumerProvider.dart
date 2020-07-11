import 'package:flutter/cupertino.dart';

class ConsumerProviderNotifier with ChangeNotifier {
  String prov1 = 'Consumer<ConsumerProviderNotifier>';
  String coding = 'click to show code';
  bool show = false;
  void showCode() {
    show = !show;
    notifyListeners();
  }

  void changeCode(String code) {
    coding = code;
    notifyListeners();
  }

  void changeName(String name) {
    prov1 = name;
    notifyListeners();
  }
}
