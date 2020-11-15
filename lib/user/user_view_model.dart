import 'package:flutter/material.dart';

class UserViewModel extends ChangeNotifier {
  String userName = '';
  String userMail = '';

  void changeNameText(String inputName) {
    userName = inputName;
    notifyListeners();
  }

  void changeMailText(String inputMail) {
    userMail = inputMail;
    notifyListeners();
  }
}
