import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  String calculateBMI() {    //메소드 만들기
    double bmi = weight / pow(height / 100, 2);
    bmi.toStringAsFixed(1);
  }

  String getResult() {     //메소드 만들기
    if (bmi >= 25) {
      return '과체중';
    } else if (bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }
}
