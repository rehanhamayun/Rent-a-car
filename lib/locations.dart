import 'package:flutter/material.dart';
import 'package:rentcar/Card/Teslamodel.dart';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        height: 200,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [TeslaModel(), TeslaModel()],
        ),
      ),
    );
  }
}
