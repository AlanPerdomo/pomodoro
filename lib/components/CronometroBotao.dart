import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icon;
  final void Function()? click;
  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icon,
    this.click,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          textStyle: const TextStyle(
            fontSize: 25,
          ),
        ),
        onPressed: click,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icon,
                size: 20,
              ),
            ),
            Text(texto),
          ],
        ));
  }
}
