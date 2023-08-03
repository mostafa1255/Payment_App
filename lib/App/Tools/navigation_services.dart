import 'package:flutter/cupertino.dart';

class NavigationServices {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> navigatorKeyWidget =
      GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToWithArg(String routeName, dynamic arg) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arg);
  }

  Future<dynamic> navigateToReplacment(String routeName, {dynamic arg}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arg);
  }

  Future<dynamic> navigateToReplacmentUntil(String routeName, {dynamic arg}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route route) => false,
        arguments: arg);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }

  Future<dynamic> navigateToWidget(String routeName) {
    return navigatorKeyWidget.currentState!.pushNamed(routeName);
  }

  Future<dynamic> navigateToWithArgWidget(String routeName, dynamic arg) {
    return navigatorKeyWidget.currentState!
        .pushNamed(routeName, arguments: arg);
  }

  Future<dynamic> navigateToReplacmentWidget(String routeName, {dynamic arg}) {
    return navigatorKeyWidget.currentState!
        .pushReplacementNamed(routeName, arguments: arg);
  }

  Future<dynamic> navigateToReplacmentUntilWidget(String routeName,
      {dynamic arg}) {
    return navigatorKeyWidget.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route route) => false,
        arguments: arg);
  }

  void goBackWidget() {
    return navigatorKeyWidget.currentState!.pop();
  }
}
