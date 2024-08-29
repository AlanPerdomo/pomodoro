import 'package:flutter/material.dart';
import 'package:pomodoro/components/CronometroBotao.dart';
import 'package:pomodoro/main.dart';
import 'package:provider/provider.dart';
import 'package:pomodoro/store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "data",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${store.minutos.toString().padLeft(
                  2,
                  '0',
                )}:${store.segundos.toString().padLeft(
                  2,
                  '0',
                )}',
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  icon: Icons.play_arrow,
                  texto: 'Iniciar',
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: CronometroBotao(
              //     icon: Icons.stop,
              //     texto: 'Parar',
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CronometroBotao(
                  icon: Icons.refresh,
                  texto: 'Reiniciar',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
