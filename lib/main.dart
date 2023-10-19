import 'package:flutter/material.dart';
import 'package:projetflutter/decrement.dart';
import 'package:projetflutter/increment.dart';
import 'package:projetflutter/compteur.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: IncrementPage(title: 'Page Increment') ,
    );
  }
}
