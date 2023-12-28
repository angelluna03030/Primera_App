import 'package:flutter/material.dart';

class FuncionContador extends StatefulWidget {
  const FuncionContador({Key? key}) : super(key: key);

  @override
  State<FuncionContador> createState() => _FuncionContadorState();
}

class _FuncionContadorState extends State<FuncionContador> {
  int cantidad = 0;
  String texto = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 170, 238),
        title: Center(child: const Text("Contadores Funciones")),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_outlined),
            onPressed: () {
              cantidad = 0;
              setState(() {});
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${cantidad}",
              style: const TextStyle(
                fontFamily:
                    "Roboto", // Cambié AutofillHints.addressCityAndState a una fuente válida
                fontSize: 100.0,
              ),
            ),
            Text("click${cantidad == 1 ? "" : "s"} "),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Bottones(
            icon: Icons.plus_one,
            onPressed: () {
              cantidad++;
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          Bottones(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              cantidad--;
              if (cantidad < 0) {
                cantidad = 0;
              }
              setState(() {});
            },
          ),
          const SizedBox(height: 10),
          Bottones(
            icon: Icons.refresh_outlined,
            onPressed: () {
              cantidad = 0;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class Bottones extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const Bottones({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      backgroundColor: const Color.fromARGB(255, 33, 170, 238),
      onPressed: onPressed, // Utiliza la función pasada como parámetro
      child: Icon(icon),
    );
  }
}
