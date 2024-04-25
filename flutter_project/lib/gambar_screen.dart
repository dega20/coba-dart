import "dart:html";

import "package:flutter/material.dart";
import 'package:just_audio/just_audio.dart';

class GambarScreen extends StatefulWidget {
  const GambarScreen({Key? key}) : super(key: key);

  @override
  State<GambarScreen> createState() => _GambarScreenState();
}

class _GambarScreenState extends State<GambarScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animal"),
          backgroundColor: Colors.amber,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      gantiNama("Kucing");
                      await player
                          .setAsset("aset_media/suara/suara-kucing.mp3");
                      await player.play();
                    },
                    child: Card(
                      child: Image.asset("aset_media/gambar/cat2.jpg"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      gantiNama("Anjing");
                      await player
                          .setAsset("aset_media/suara/suara-anjing.mp3");
                      await player.play();
                    },
                    child: Card(
                      child: Image.asset("aset_media/gambar/anjing2.jpg"),
                    ),
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () async {
                      gantiNama("Ayam jago");
                      await player
                          .setAsset("aset_media/suara/suara-ayam.mp3");
                      await player.play();
                    },
                    child: Card(
                      child: Image.asset("aset_media/gambar/jago3.jpg"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      gantiNama("Serigala");
                      await player
                          .setAsset("aset_media/suara/suara-serigala.mp3");
                      await player.play();
                    },
                    child: Card(
                      child: Image.asset("aset_media/gambar/wolf3.jpg"),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () async {
                  gantiNama("Harimau");
                  await player.setAsset("aset_media/suara/suara-singa.mp3");
                  await player.play();
                },
                child: Card(
                  child: Image.asset("aset_media/gambar/tiger2.jpg"),
                ),
              ),
              Text(
                namaHewan ?? "click a animal",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
