import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier{
   bool isVisibility = true;

  onChange() {
    isVisibility = !isVisibility;
    notifyListeners();
  }

  
}