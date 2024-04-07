import 'package:flutter/material.dart';
import '/bootstrap/helpers.dart';
import '/resources/widgets/search_box_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size(390, 69);

  final double ICON_SIZE = 30.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: PreferredSize(
          preferredSize: this.preferredSize,
          child: Padding(
            padding: EdgeInsets.all(0),
            child: SearchBox(
              hint: "Search ibentamo.ph",
              hintColor: ThemeColor.get(context).surfaceContent,
            ),
          )),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          iconSize: ICON_SIZE,
          onPressed: () {
            // Handle search button press
          },
          color: ThemeColor.get(context).primaryAccent,
        )
      ],
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(Icons.menu), // Burger menu icon
            iconSize: ICON_SIZE,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            color: ThemeColor.get(context).primaryAccent,
          );
        },
      ),
      backgroundColor: ThemeColor.get(context).background,
    );
  }
}
