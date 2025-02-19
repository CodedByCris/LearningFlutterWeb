import 'package:flutter/widgets.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo({required String routeName}) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack({required String routeName}) {
    return navigatorKey.currentState!.pop();
  }
}
