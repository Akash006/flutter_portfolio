import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/themeProvider.dart';
import 'package:provider/provider.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key, required this.titleText});
  final String titleText;

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  // Implement the preferredSize getter to specify the height of the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.titleText,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // centerTitle: false,
      // backgroundColor: Colors.blue,
      // elevation: 8,
      actions: [
        Consumer<ThemeProvider>(builder: (context, value, child) {
          bool isLightTheme = Theme.of(context).brightness == Brightness.light;
          return IconButton(
            icon: Icon(
              isLightTheme ? Icons.wb_sunny : Icons.nightlight_round,
              color: Colors.white,
            ),
            onPressed: () {
              value.toggleTheme();
            }
          );
        }),
      ],
    );
  }
}
