import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:flutter/material.dart';

class Colorizedtextavatar extends StatelessWidget {
  const Colorizedtextavatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Text Avatar"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Example Colorized Avatars',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Ali Akalın",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Bulut Peker",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Ceylin Oztürk",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text('.....'),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Xantos Salvo",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Yuval Noah",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  shape: Shape.Circular,
                  text: "Zoey Gen",
                  numberLetters: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextAvatar(
                  textColor: Colors.white,
                  text: "Ali Akalın",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Bulut Peker",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Ceylin Oztürk",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text('.....'),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Xantos Salvo",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Yuval Noah",
                  numberLetters: 2,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Zoey Gen",
                  numberLetters: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextAvatar(
                  textColor: Colors.white,
                  text: "Ali Akalın",
                  numberLetters: 1,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Bulut Peker",
                  numberLetters: 1,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Ceylin Oztürk",
                  numberLetters: 1,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text('.....'),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Xantos Salvo",
                  numberLetters: 1,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Yuval Noah",
                  numberLetters: 1,
                ),
                const SizedBox(
                  width: 12,
                ),
                TextAvatar(
                  textColor: Colors.white,
                  text: "Zoey Gen",
                  numberLetters: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
