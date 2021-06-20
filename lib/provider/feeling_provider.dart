import 'package:flutter/cupertino.dart';

class UserFeeling extends ChangeNotifier {
  int level = 0;

  void changefeeling(n) {
    level = n;
    notifyListeners();
  }
}
