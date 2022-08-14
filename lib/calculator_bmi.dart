import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({required this.height, required this.weight});
  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toString();
  }

  String getResult() {
    if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'Ideal weight';
    } else if (_bmi! >= 25 && _bmi! <= 29.9) {
      return 'Overweight';
    } else if (_bmi! >= 30 && _bmi! <= 34.9) {
      return 'fat';
    } else if (_bmi! >= 35) {
      return 'very fat';
    } else{
      return 'Underweight';
    }
  }

  String getInterPratation() {
    if (_bmi! >= 18.5 && _bmi! <= 24.9) {
      return 'A BMI of 18.5-24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.';
    } else if (_bmi! >= 25 && _bmi! <= 29.9) {
      return 'A BMI of 25-29.9 indicates that you are slightly overweight. You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice.';
    } else if (_bmi! >= 30 && _bmi! <= 34.9) {
      return 'A BMI of over 30 indicates that you are overweight. Your health may be at risk if you do not lose weight. You are recommended to talk to your doctor or a dietitian for advice.';
    } else if (_bmi! >= 35) {
      return 'A BMI of over 30 indicates that you are heavily overweight. Your health may be at risk if you do not lose weight. You are recommended to talk to your doctor or a dietitian for advice.';
    } else{
      return 'A BMI of less than 18.5 indicates that you are underweight, so you may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice.';
    }
  }
}