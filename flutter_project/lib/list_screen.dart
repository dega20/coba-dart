import 'package:flutter/material.dart';
import 'package:flutter_project/kalkulator_screen.dart';
import 'package:flutter_project/gambar_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(children: [
        ElevatedButton(
          onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(_) => KalkulatorScreen(),
                 ),
              );
          }, 
          child: Text('kalkulator'),
        ),
        ElevatedButton(
          onPressed: (){

            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(_) => GambarScreen(),
              ),
            );
          }, 
          child: Text('Animals'),
        ),
      ],
      ),
      );
  }
}