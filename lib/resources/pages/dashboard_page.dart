import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/dashboard_controller.dart';

class DashboardPage extends NyStatefulWidget<DashboardController> {
  static const path = '/dashboard';

  DashboardPage({super.key}) : super(path, child: _DashboardPageState());
}

class _DashboardPageState extends NyState<DashboardPage> {

  /// [DashboardController] controller
  DashboardController get controller => widget.controller;

  @override
  init() async {

  }
  
  /// Use boot if you need to load data before the view is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
