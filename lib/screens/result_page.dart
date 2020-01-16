import 'package:bmi_calculator_0110/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reuseable.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI계산기 결과화면'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch, //
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                '당신의 결과',
                style: kTitletextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '정상',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.1',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'BMI 수치는 정상이나...',
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: '재계산',
            onTap: () {
              Navigator.pop(context); //되돌아가는 것이므로
            },
          )
        ],
      ),
    );
  }
}
