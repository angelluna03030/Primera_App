import 'package:flutter/material.dart';
import 'package:flutter_youtube/src/contador/contar_funcion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: FuncionContador());
  }
}
