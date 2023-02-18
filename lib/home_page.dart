import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double heihgt = 150;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heihgt.toStringAsFixed(0)//el  0 representa sin decimales,
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
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Slider(
                value: heihgt,
                min: 50,
                max: 220,
                onChanged: (double value) {
                  heihgt = value;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
