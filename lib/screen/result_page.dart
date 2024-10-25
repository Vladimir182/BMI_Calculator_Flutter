import 'package:bmi_calculator_flutter/components/bottom_button.dart';
import 'package:bmi_calculator_flutter/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiResult,
    required this.interpretation,
    required this.resultText,
    required this.age,
    required this.gender,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final int age;
  final Widget gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      gender,
                      Text(
                        '${age.toString()} Age',
                        style: const TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
