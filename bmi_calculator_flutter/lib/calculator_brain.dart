import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Béo phìììì rồi!';
    } else if (_bmi > 18.5) {
      return 'Quá ổn áp!';
    } else {
      return 'Ốm nhách!';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Trời ơi! Tập thể dục mỗi ngày, chạy bộ, yoga gì gì cũng được!';
    } else if (_bmi > 18.5) {
      return 'Ngon lành cành đào! Nhớ giữ nha.';
    } else {
      return 'Quá ẹ, ăn uống bổ dưỡng vào và tập gym đi nha!';
    }
  }
}
