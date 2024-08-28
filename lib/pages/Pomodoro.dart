import 'package:flutter/material.dart';
import 'package:pomodoro/components/Cronometro.dart';
import 'package:pomodoro/components/EntradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  valor: 25,
                  titulo: 'Testendo Duração',
                ),
                EntradaTempo(
                  valor: 5,
                  titulo: 'Teste de Descanço',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
