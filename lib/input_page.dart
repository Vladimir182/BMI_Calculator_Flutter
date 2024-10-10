import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const double buttomContainerHight = 80.0;
const activeCardColour = Color(0xFF1D1F33);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF111328);

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      selectedGender = GenderType.male;
                    }),
                    child: ReusableCard(
                      colour: selectedGender == GenderType.male
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: const IconContent(
                        label: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      selectedGender = GenderType.female;
                    }),
                    child: ReusableCard(
                      colour: selectedGender == GenderType.female
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: const IconContent(
                        label: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour: Color(0xFF1D1F33),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            width: double.infinity,
            height: buttomContainerHight,
            margin: const EdgeInsets.only(top: 15),
          ),
        ],
      ),
    );
  }
}
