import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '/app/controllers/main_controller.dart';

class MainPage extends NyStatefulWidget<MainController> {
  static const path = '/main';

  MainPage({super.key}) : super(path, child: _MainPageState());
}

class _MainPageState extends NyState<MainPage> {
  int _currentIndex = 0;

  @override
  init() async {}

  /// Use boot if you need to load data before the [view] is rendered.
  // @override
  // boot() async {
  //
  // }

  @override
  Widget view(BuildContext context) {
    final List<Widget> _pages = [
      Container(
        child: MaterialButton(
            onPressed: widget.controller.onTapDocumentation,
            child: Text(
              "click me".tr().capitalize(),
            ).bodyLarge(context)
            // .setColor(context, (color) => color.surfaceContent),
            ),
      ),
      Container(
        child: Text("Tab 2"),
      ),
      Container(
        child: Text("Tab 3"),
      ),
      Container(
        child: Text("Tab 4"),
      ),
      Container(
        child: Text("Tab 5"),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Main'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 5',
          ),
        ],
      ),
    );
  }
}

// MaterialButton(
//               onPressed: widget.controller.onTapDocumentation,
//               child: Text(
//                 "click me".tr().capitalize(),
//               ).bodyLarge(context)
//               // .setColor(context, (color) => color.surfaceContent),
//               ),
