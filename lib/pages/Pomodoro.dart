import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Cronometro.dart';
import 'package:pomodoro/components/EntradaTempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    valor: store.tempoTrabalho,
                    titulo: 'Trabalho',
                    inc: store.incrementarTempoTrabalho,
                    dec: store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    valor: store.tempoDescanso,
                    titulo: 'Descanço',
                    inc: store.incrementarTempoDescanso,
                    dec: store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
