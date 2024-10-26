import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppbarWidget({super.key, required this.titleText});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    bool isLightTheme = Theme.of(context).brightness == Brightness.light;
    return AppBar(
      title: Text(titleText,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // centerTitle: false,
      // backgroundColor: Colors.blue,
      // elevation: 8,
      actions: [
        IconButton(
          icon: Icon(
            isLightTheme ? Icons.wb_sunny : Icons.nightlight_round,
            color: Colors.white,
          ),
          onPressed: () {
            if (isLightTheme) {
            } else {
            }
          },
        ),
      ],
    );
  }

  // Implement the preferredSize getter to specify the height of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
