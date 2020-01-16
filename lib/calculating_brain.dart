import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {    //메소드 만들기
    double _bmi = weight / pow(height / 100, 2);
    _bmi.toStringAsFixed(1);
  }

  String getResult() {     //메소드 만들기
    if (_bmi >= 25) {
      return '과체중';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return '살빼라';
    } else if (_bmi > 18.5) {
      return '딱좋네';
    } else {
      return '마니 묵어라';
    }
  }
}

