import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({ Key? key }) : super(key: key);

  @override
  _KalkulatorScreenState createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {

String? nilaiAkhirHuruf;
double? nilaiRataRata;
int? nilaiTugas;
int? nilaiUTS; 
int? nilaiUAS;
TextEditingController inputNilaiTugas = TextEditingController();
TextEditingController inputNilaiUTS = TextEditingController();
TextEditingController inputNilaiUAS = TextEditingController();

hitungNilai() {
              setState(() {
                int nilai1 = int.parse(inputNilaiTugas?.text ?? "0");
                int nilai2 = int.parse(inputNilaiUTS?.text ?? "0");
                int nilai3 = int.parse(inputNilaiUAS?.text ?? "0");
                nilaiRataRata = (nilai1 + nilai2 + nilai3) / 3;

                konversiHuruf(nilaiRataRata ?? 0);
              });
            }
            konversiHuruf(double nilai){
              if (nilai >=90 && nilai <=100){
                nilaiAkhirHuruf = "nilai A";
              }
              else if (nilai >100){
                nilaiAkhirHuruf = "is albert einsten";
              }
              else if (nilai >=70 && nilai <=89){
                nilaiAkhirHuruf = "nilai B";
              }
              else if (nilai >=50 && nilai <=69){
                nilaiAkhirHuruf = "nilai C";
              }
              else {
                nilaiAkhirHuruf = "belum lulus";
              }

              setState(() {});
            }

String hasil = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Akhir'),
        backgroundColor: Colors.pinkAccent,
        ),
body: Column(
        children: [
          Text(nilaiAkhirHuruf ?? "nilai akhir"),
          SizedBox(height: 30,),
          TextFormField(
            decoration: InputDecoration(hintText: "masukan nilai tugas"), 
            controller: inputNilaiTugas,),
          TextFormField(
            decoration: InputDecoration(hintText: "masukan nilai UTS"),
            controller: inputNilaiUTS,),
          TextFormField(
            decoration: InputDecoration(hintText: "masukan nilai UAS"),
            controller: inputNilaiUAS,),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed: (){
             hitungNilai();
            
            // var hasiJumlah = int.parse(inputNilaiTugas.text) + int.parse(inputNilaiUTS.text) + int.parse(inputNilaiUAS.text);
            // var nilaiAkhir =  hasiJumlah/3;
            // // double angka1 = double.tryParse(angka1Controller.text) ??0;
            // // double angka2 = double.tryParse(angka2Controller.text) ??0;
            // setState(() {
            //   hasil = (nilaiAkhir).toString();
            // });
          }, 
          child: Text("hitung nilai"),
          ),
          Text("nilai rata rata"),
        Text(nilaiRataRata?.toString() ?? "0"),  
      ],
    ),

      );
  }
}