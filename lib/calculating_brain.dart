import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  String calculateBMI(){                              //메소드
    double bmi = weight / pow(height/ 100, 2);
    bmi.toStringAsFixed(1);
  }

}
