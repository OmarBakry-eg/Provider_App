import 'package:flutter/material.dart';

class ProxyProviderNotifierOne with ChangeNotifier {
  String name = 'Omar';
  void changeName(String name) {
    this.name = name;
    notifyListeners();
  }
}

class ProxyProviderNotifierTwo {
  ProxyProviderNotifierOne providerNotifierOne;
  ProxyProviderNotifierTwo(this.providerNotifierOne);
  void changeNameElse(String name) {
    providerNotifierOne.changeName(name);
  }
}
