import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Buttons Sample"),
      body: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text("Text Button")
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("Press me")
              )
            ],
          ),
        ),
      ),
    );
  }
}