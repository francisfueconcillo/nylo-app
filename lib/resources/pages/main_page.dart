import 'package:flutter/material.dart';
import 'package:flutter_app/resources/widgets/custom_app_bar_widget.dart';
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

  final double ICON_SIZE = 30.0;

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
      // appBar: AppBar(
      //   title: Text('Main'),
      // ),
      appBar: CustomAppBar(),
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
            icon: Icon(Icons.search, size: ICON_SIZE),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, size: ICON_SIZE),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline, size: ICON_SIZE),
            label: 'Sell',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline, size: ICON_SIZE),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, size: ICON_SIZE),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
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
