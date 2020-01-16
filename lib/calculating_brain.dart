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

// bmi가 에러 나는 이유는 'String calculateBMI()'에서만 사용되고 'String getResult()'에서는 사용될 수 없으므로. 따라서 private로 만들어야주어야 한다.
