import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class DashboardPage extends NyStatefulWidget {
  static const path = '/dashboard';
  
  DashboardPage({super.key}) : super(path, child: _DashboardPageState());
}

class _DashboardPageState extends NyState<DashboardPage> {

  @override
  init() async {

  }
  
  /// Use boot if you need to load data before the [view] is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
