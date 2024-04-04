import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';

class MainPage extends NyStatefulWidget {
  static const path = '/main';
  
  MainPage({super.key}) : super(path, child: _MainPageState());
}

class _MainPageState extends NyState<MainPage> {

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
        title: Text("Main")
      ),
      body: SafeArea(
         child: Container(),
      ),
    );
  }
}
