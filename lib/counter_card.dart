import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  const CounterCard({super.key, this.counter = 0, required this.onIncrement});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text('Zähler: $counter'),
            ElevatedButton(
              onPressed: () {
                onIncrement();
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
