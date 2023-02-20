import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heihgt = 150;
  double weight = 60;
  double bmi = 0;
  String result = "x";
  String recomendation = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Bienvenido",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w700,
                  fontSize: 22.0,
                  color: Colors.pink,
                ),
              ),
              const Text(
                "Por favor seleciona los parametros correspondientes",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontWeight: FontWeight.w300,
                  fontSize: 16.0,
                  color: Colors.blueGrey,
                  height: 1.3,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                  child: Text(
                "Altura",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontSize: 16,
                  color: Colors.black54,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.baseline, //para alinear el texto cm
                textBaseline:
                    TextBaseline.alphabetic, //para alinear el texto cm
                children: [
                  Text(
                    heihgt.toStringAsFixed(0), //el  0 representa sin decimales,
                    style: const TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ), //para no utilizar los decimales.
                  //Text(heihgt.toInt().toString()),
                  //Text("$heihgt"),
                  const Text(
                    " cm",
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Slider(
                value: heihgt,
                min: 30,
                max: 220,
                onChanged: (double value) {
                  heihgt = value;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                  child: Text(
                "Peso",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontSize: 16,
                  color: Colors.black54,
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.baseline, //para alinear el texto cm
                textBaseline:
                    TextBaseline.alphabetic, //para alinear el texto cm
                children: [
                  Text(
                    weight.toStringAsFixed(0), //el  0 representa sin decimales,
                    style: const TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ), //para no utilizar los decimales.
                  //Text(heihgt.toInt().toString()),
                  //Text("$heihgt"),
                  const Text(
                    " kg",
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Slider(
                value: weight,
                min: 30,
                max: 200,
                onChanged: (double value) {
                  weight = value;
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    bmi = weight / pow((heihgt / 100), 2);
                    if (bmi < 18) {
                      result = "Bajo en Peso";
                      recomendation =
                          "Debes de comer un poco màs y hacer ejercicios";
                    } else if (bmi < 25) {
                      result = "Normal";
                      recomendation =
                          "Todo està bien, pero no olvides hacer màs ejercicios";
                    } else {
                      result = "Sobre Peso";
                      recomendation =
                          "Debes de comer un màs sano y hacer màs ejercicios";
                    }
                    setState(() {});
                  },
                  child: const Text("Calcular"),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Resultado",
                            style: TextStyle(
                                fontFamily: "Noto Sans", fontSize: 14.0),
                          ),
                          Text(
                            bmi.toStringAsFixed(1),
                            style: const TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 74, 7, 233),
                            ),
                          ),
                          Text(
                            result,
                            style: const TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff06d6a0),
                            ),
                          ),
                          const Text(
                            "Recomendación:",
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 14.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          Text(
                            recomendation,
                            style: const TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 15.0,
                              color: Color.fromARGB(255, 224, 105, 240),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "asset/images/image2.png",
                        height: 60.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
