import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanBola(),
    );
  }
}

class HalamanBola extends StatelessWidget {
  const HalamanBola({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text(
            'Tanya Daku Apa Saja',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: const Center(child: Bola()));
  }
}

class Bola extends StatefulWidget {
  const Bola({super.key});

  @override
  State<Bola> createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  int nomorBola = 1;
  void randomizeBall() {
    setState(() {
      nomorBola = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            randomizeBall();
          },
          child: Image.asset('images/ball1.png'),
        ),
        SizedBox(height: 20),
        Text(
          'Nomor Bola: $nomorBola',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
