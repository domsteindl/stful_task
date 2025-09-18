import 'package:flutter/material.dart';


class CounterCard extends StatefulWidget {
  final ValueChanged<int> onCounterChanged;
  const CounterCard({super.key, required this.onCounterChanged});

  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {

   int counter = 0;


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
                setState(() {
                  counter++;
                });
                widget.onCounterChanged(counter);
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

