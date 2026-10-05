import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_sharp),
          ),
        ],
      ),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtom(
            icon: Icons.refresh_sharp,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          SizedBox(height: 20),
          CustomButtom(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter = clickCounter + 1;
              });
            },
          ),
          SizedBox(height: 20),
          CustomButtom(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                clickCounter = clickCounter - 1;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({required this.icon, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      backgroundColor: Colors.indigo,
      foregroundColor: Colors.white,
      hoverColor: Colors.indigoAccent,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
