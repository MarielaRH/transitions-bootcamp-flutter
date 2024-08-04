import 'package:flutter/material.dart';

void main() => runApp(const Screen2());

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text('Estoy siendo animado Screen 2'),
      ),
    );
  }
}
