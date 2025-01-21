import 'package:flutter/material.dart';
import 'package:pase_de_lista/code.dart';
import 'profile.dart';



void main() {
  runApp(const PaseDeLista());
}

class PaseDeLista extends StatelessWidget {
  const PaseDeLista({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pase de lista',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ), // ThemeData
      home: const CodePage(title: 'Pase de Lista'),
    );
  }
}
