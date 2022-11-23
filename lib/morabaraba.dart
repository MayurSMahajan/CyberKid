import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Morabaraba extends StatefulWidget {
  const Morabaraba({Key key}) : super(key: key);

  @override
  State<Morabaraba> createState() => _MorabarabaState();

}

class _MorabarabaState extends State<Morabaraba> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
         'assets/morabaraba.png'
        ),

      )
    );
  }
}