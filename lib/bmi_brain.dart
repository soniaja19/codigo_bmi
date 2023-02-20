import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({required this.height, required this.weight});

  double bmi = 0;

  //Calcula BMI

  double bmiCalculator() {
    bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  String getResult() {
    // if (bmi < 18) {
    //   return "Bajo Peso";
    // } else if (bmi < 25) {
    //   return "Norml";
    // } else {
    //   return "SobrePeso";
    // }
    String result = "";
    if (bmi < 18) {
      result = "Bajo Peso";
    } else if (bmi < 25) {
      result = "Normal";
    } else {
      result = "SobrePeso";
    }
    return result;
  }

  String getRecommendation() {
    String recommendation = "";
    if (bmi < 18) {
      recommendation = "Debes de comer un poco màs y hacer ejercicios";
    } else if (bmi < 25) {
      recommendation = "Todo està bien, pero no olvides hacer màs ejercicio";
    } else {
      recommendation = "Debes de comer un màs sano y hacer màs ejercicios";
    }
    return recommendation;
  }

  String getImage() {
    String image = "";
    if (bmi < 18) {
      image = "image1";
    } else if (bmi < 25) {
      image = "image2";
    } else {
      image = "image3";
    }
    return image;
  }
}
