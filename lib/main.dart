import 'package:codigo_bmi/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // damos clic al foquito para importar la libreria 'package:codigo_bmi/home_page.dart'
    );
  }
}
