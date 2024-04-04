import 'package:flutter/material.dart';
import '/resources/pages/main_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* Dashboard Route Guard
|-------------------------------------------------------------------------- */

class DashboardRouteGuard extends NyRouteGuard {
  DashboardRouteGuard();

  @override
  Future<bool> canOpen(BuildContext? context, NyArgument? data) async {
    // implement your check
    return (await Auth.loggedIn());
  }

  @override
  redirectTo(BuildContext? context, NyArgument? data) async {
    // redirect if canOpen is false
    await routeTo(MainPage.path);
  }
}
