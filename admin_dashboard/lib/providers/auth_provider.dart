import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? _token = '';

  login(String email, String password) {
    //TODO: peticion HTTP
    _token = "lksdajdklasdjasolkdasjdlkasdjasdkas";
    print(_token);

    //Navegar al dashboard
    notifyListeners();
  }
}
