import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void resetCounters() {
    setState(() {
      resetVersion++;
      counters = List.filled(counters.length, 0);
    });
  }

  int get sum => counters.reduce((value, element) => value + element);
  int resetVersion = 0;
  List<int> counters = [0, 0, 0, 0, 0];
  //int  get sum => counters.reduce((value, element) => value + element);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            for (int i = 0; i < counters.length; i++)
              CounterCard(
                resetVersion: resetVersion,
                onCounterChanged: (value) {
                  setState(() {
                    counters[i] = value;
                  });
                },
              )

            /*
            CounterCard(onCounterChanged: (value) => setState(() {
              sum += value;
            })),
            CounterCard(onCounterChanged: (value) => setState(() {
              sum += value;
            })),
            CounterCard(onCounterChanged: (value) => setState(() {
              sum += value;
            })),
            CounterCard(onCounterChanged: (value) => setState(() {
              sum += value;
            })),
            CounterCard(onCounterChanged: (value) => setState(() {
              sum += value;
            })),*/
            ,
            Text("Summe aller Zählerstände: $sum"),
            OutlinedButton(
                onPressed: resetCounters, child: Text("Reset Counters"))
          ],
        ),
      ),
    );
  }
}
