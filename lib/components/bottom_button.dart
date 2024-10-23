import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onTap, required this.buttonTitle});

  final GestureTapCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kBottomContainerColour,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 20),
        height: kButtomContainerHight,
        margin: const EdgeInsets.only(top: 15),
        child: Text(
          buttonTitle,
          style: kLargeButtonStyle,
        ),
      ),
    );
  }
}
