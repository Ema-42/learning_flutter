import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Screen"), elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w100,
              ),
            ),
            (clickCounter == 1)
                ? Text(
                    "Click!!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                : Text(
                    "Clicks!!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickCounter = clickCounter + 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
