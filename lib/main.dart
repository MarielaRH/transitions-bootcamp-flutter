import 'package:flutter/material.dart';
import 'package:transitions_bootcamp/navigation/navigation_app.dart';
import 'package:transitions_bootcamp/navigation/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: screen1,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola mundo este es el título'),
        ),
        body: const Center(
          child: Text('Que onda mi gente, este es un texto cualquiera'),
        ),
      ),
    );
  }
}
