import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:flutter_portfolio/myThemeData.dart';
import 'dart:math';

class ActionSliderWidget extends StatelessWidget {
  const ActionSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppbarWidget(titleText: "Action Slider"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ActionSlider.standard(
                backgroundBorderRadius: BorderRadius.circular(40.0),
                foregroundBorderRadius: BorderRadius.circular(40.0),
                width: 300.0,
                backgroundColor: Colors.white70,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: Transform.rotate(
                      angle: 0.5 * pi,
                      child: const Icon(Icons.unfold_more_rounded, size: 28.0)),
                ),
                child: const Text(
                  'Slide to confirm',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                action: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                },
              ),
              const SizedBox(
                height: 60,
              ),
              ActionSlider.dual(
                backgroundBorderRadius: BorderRadius.circular(20.0),
                foregroundBorderRadius: BorderRadius.circular(20.0),
                width: 300.0,
                backgroundColor: Colors.black87,
                startChild: const Text(
                  'Reject',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                endChild: const Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                startAction: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                  await Future.delayed(const Duration(seconds: 1));
                  controller.reset(); //resets the slider
                },
                endAction: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success(); //starts success animation
                  await Future.delayed(const Duration(seconds: 1));
                  controller.reset(); //resets the slider
                },
                icon: Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: Transform.rotate(
                      angle: 0.5 * pi,
                      child: const Icon(Icons.unfold_more_rounded, size: 28.0)),
                ),
              ),
            ],
          ),
        )
    );
  }
}
