import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:flutter_portfolio/myThemeData.dart';

class MySnackBarWidget extends StatelessWidget {
  const MySnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Snack Bar"),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: (){
              final snackbar = SnackBar(
                content: Text('Yay! A SnackBar!'),
                action: SnackBarAction(label: 'Undo', onPressed: (){}),
                duration: Duration(milliseconds: 3000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                behavior: SnackBarBehavior.floating,
                showCloseIcon: true,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          ),
        ),
      ),
    );
  }
}