import 'package:flutter/cupertino.dart';

class NormalProvider with ChangeNotifier {
  String prov1 = 'Provider.of<NormalProvider>(context)';
  String coding = 'click to show code';

  void changeName(String name, String code) {
    prov1 = name;
    coding = code;
    notifyListeners();
  }
}
