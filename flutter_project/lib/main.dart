import 'package:flutter/material.dart';
import 'package:flutter_project/halaman2.dart';
import 'package:flutter_project/list_screen.dart';
import 'kalkulator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Beranda'),
      ),
      body: Column(
        children: [
          Text(
            'selamat datang',
             style: TextStyle(color: Colors.blueGrey, fontSize: 30),
             ), 
          Text('budi'),
          Text('kelas 22tia2')
        ],
        ),
    );
  }
}