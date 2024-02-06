import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight}) {
    _bmi = calculateBMI();
  }

  final int height;
  final int weight;

  late double _bmi;

  double calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
