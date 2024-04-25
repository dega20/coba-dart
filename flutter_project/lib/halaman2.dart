import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman 2'),
        backgroundColor: Colors.blueAccent,
    ),
    body: Column(
    children: [
      Text('Andi'),
      Text('belajar'),
      Row(
        children: [
          Icon(
            Icons.airline_seat_recline_normal_rounded,
            size: 80,
            ),
          Icon(
            Icons.airline_seat_recline_normal_rounded,
            size: 80,
            ),
          Icon(
            Icons.airline_seat_recline_normal_rounded,
            size: 80,
            ),
          Icon(
            Icons.airline_seat_recline_normal_rounded,
            size: 80,
            ),
          Icon(
            Icons.airline_seat_recline_extra_rounded,
            size: 80,
            ),
          Icon(
            Icons.anchor_rounded,
            size: 80,
            ),
        ],
      ),
    ],
        ),
    );
  }
}
