import 'package:flutter/material.dart';

class TeksUtama extends StatefulWidget { 
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override 
  State<StatefulWidget> createState() => state;
}

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    "Louis Elua Arkananta",
    "Akhyna Muazi",
    "Yeremia Laurent Hutauruk",
    "Fidelis Gulo",
    "Muhammad Adiansyah Saputra",
  ];
  var listWarna = [
    Colors.blue,
    Colors.brown,
    Colors.red,
    Colors.green,
    Colors.amberAccent,
  ];
  int index = 0;

  @override 
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Apa Kabar',
        textDirection: TextDirection.ltr,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Text(
        listNama[index % listNama.length],
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: listWarna[index % listWarna.length]),
        )
    ],
      );
  }

      void incrementIndex() {
        setState(() {
          index++;
        });
      }
  }

  void main() {
    TeksUtama teksUtama = TeksUtama();
    runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Halo Dunia',
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: Center(child: teksUtama,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random', 
          onPressed: teksUtama.state.incrementIndex,
          child: const Icon(Icons.refresh),
          )
      )));
  }
