import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  const AppbarWidget({super.key, required this.titleText});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      // centerTitle: false,
      // backgroundColor: Colors.blue,
      // elevation: 8,
    );
  }

  // Implement the preferredSize getter to specify the height of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
