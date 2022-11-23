import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flare/customise.dart';
import 'package:flutter_flare/dashboard.dart';
import 'package:flutter_flare/pages/landing_page.dart';
class PassWordScenario extends StatefulWidget {
  final bool isHacked;
  const PassWordScenario({Key key, this.isHacked}) : super(key: key);

  @override
  State<PassWordScenario> createState() => _PassWordScenarioState();
}

class _PassWordScenarioState extends State<PassWordScenario> {
  String image="";
  @override
  void initState() {
    // TODO: implement initState
    if(widget.isHacked)
    image = "assets/bad_password-002.png";
    else{
      image = "assets/bad_password-001.png";
       Timer(Duration(seconds: 3), () { // <-- Delay here
                    
              image = "assets/bad_password-003.png";
                  });
    }
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
  
    return widget.isHacked == false? Scaffold (
      body: Container(
          child : Image.asset(image,      
       fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,)
   
      )
    ):
     Scaffold (
      body: Container(
          child : Image.asset(image,      
       fit: BoxFit.fill,
       height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,)
      
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
           Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
      ),
    );
  }
}