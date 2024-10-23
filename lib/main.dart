import 'package:flutter/material.dart';

import 'constants.dart';
import 'screen/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: false).copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: kSliderActiveTrackColor,
          inactiveTrackColor: kSliderInactiveTrackColor,
          thumbColor: kSliderThumbColor,
          overlayColor: kSliderThumbColor.withOpacity(0.2),
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayShape: const RoundSliderOverlayShape(
            overlayRadius: 30.0,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E22),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E22),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.blueGrey,
        ),
        // textTheme: const TextTheme(
        //   bodyMedium: TextStyle(
        //     fontSize: 20,
        //     color: Color(0xFFFFFFFF),
        //   ),
        // ),
      ),
      home: const InputPage(),
    );
  }
}
