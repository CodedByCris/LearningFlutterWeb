import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final AuthProvider authProvider;

  String email = '';
  String password = '';

  LoginFormProvider(this.authProvider);

  bool validateForm() {
    if (formKey.currentState!.validate()) {
      authProvider.login(email, password);
      return true;
    } else {
      return false;
    }
  }
}
