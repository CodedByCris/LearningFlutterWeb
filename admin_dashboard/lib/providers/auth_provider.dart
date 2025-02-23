import 'package:admin_dashboard/services/local_storage.dart';
import 'package:admin_dashboard/services/navigation_service.dart';
import 'package:flutter/material.dart';

enum AuthStatus { checking, authenticated, notAuthenticated }

class AuthProvider extends ChangeNotifier {
  String? _token = '';
  AuthStatus authStatus = AuthStatus.checking;

  AuthProvider() {
    isAuthenticated();
  }

  login(String email, String password) {
    //TODO: peticion HTTP
    _token = "lksdajdklasdjasolkdasjdlkasdjasdkas";
    LocalStorage.prefs.setString('token', _token!);
    authStatus = AuthStatus.authenticated;
    notifyListeners();
    NavigationService.replaceTo('/dashboard');
  }

  Future<bool> isAuthenticated() async {
    final token = LocalStorage.prefs.getString('token');
    if (token != null) {
      Future.delayed(Duration(milliseconds: 1000));
      authStatus = AuthStatus.authenticated;
      notifyListeners();
      return true;
    }
    authStatus = AuthStatus.notAuthenticated;
    notifyListeners();
    return false;
  }
}
