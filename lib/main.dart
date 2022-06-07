import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            child: Container(
          width: double.infinity,
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          width: double.infinity,
          color: Colors.green,
        )),
        Expanded(
            child: Container(
          width: double.infinity,
          color: Colors.blue,
        )),
        MaterialButton(
          onPressed: () {},
          color: Colors.red,
          height: 50,
          minWidth: double.infinity,
          child: const Text(
            'Calculate',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
