import 'package:flutter/material.dart';
import 'package:transitions_bootcamp/navigation/router.dart';

void main() => runApp(const Screen1());

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Screen 1'),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, screen2);
                  },
                  child: const Center(child: Text('Abrir screen2')))
            ],
          ),
        ),
      ),
    );
  }
}
