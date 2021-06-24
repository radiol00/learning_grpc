import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_grpcclient/protos/colodigits/colodigits.pbgrpc.dart';
import 'package:flutter_grpcclient/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Service service;
  List<Colodigit> colodigits = [];

  @override
  void initState() {
    super.initState();
    service = Service();
    service.getDigitStream().listen((data) {
      setState(() {
        colodigits.add(data);
      });
    }, onError: (err) {
      print(err);
    });
  }

  Widget _buildColodigit(Colodigit colodigit) {
    return Text(
      "${colodigit.digit}",
      textScaleFactor: 3.0,
      style: TextStyle(
        color:
            Color.fromRGBO(colodigit.r[0], colodigit.g[0], colodigit.b[0], 1.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            ...colodigits
                .map((colodigit) => _buildColodigit(colodigit))
                .toList(),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await showDialog(
            context: context,
            builder: (context) {
              var controllerDigit = TextEditingController();
              var controllerR = TextEditingController();
              var controllerG = TextEditingController();
              var controllerB = TextEditingController();
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: controllerDigit,
                        decoration: InputDecoration(hintText: "Liczba"),
                      ),
                      TextField(
                        controller: controllerR,
                        decoration: InputDecoration(hintText: "R"),
                      ),
                      TextField(
                        controller: controllerG,
                        decoration: InputDecoration(hintText: "G"),
                      ),
                      TextField(
                        controller: controllerB,
                        decoration: InputDecoration(hintText: "B"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop(
                                    {
                                      "digit": controllerDigit.text,
                                      "R": controllerR.text,
                                      "G": controllerG.text,
                                      "B": controllerB.text,
                                    },
                                  );
                                },
                                child: Text("Dodaj"))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
          if (result != null) {
            var digit = int.parse(result["digit"]);
            var r = int.parse(result["R"]);
            var g = int.parse(result["G"]);
            var b = int.parse(result["B"]);
            await service.addDigit(digit, Color.fromRGBO(r, g, b, 1));
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
