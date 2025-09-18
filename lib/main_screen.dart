import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            CounterCard(counter: counter, onIncrement: () => setState(() {
              counter++;
            }),),
                     CounterCard(counter: counter, onIncrement: () => setState(() {
              counter++;
            }),),
                   CounterCard(counter: counter, onIncrement: () => setState(() {
              counter++;
            }),),
                   CounterCard(counter: counter, onIncrement: () => setState(() {
              counter++;
            }),),
                CounterCard(counter: counter, onIncrement: () => setState(() {
              counter++;
            }),),
          ],
        ),
      ),
    );
  }
}