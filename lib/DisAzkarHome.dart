import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'NewCard.dart';


class DisAzkarHome extends StatefulWidget {
  const DisAzkarHome({Key? key}) : super(key: key);

  @override
  _DisAzkarHomeState createState() => _DisAzkarHomeState();
}

class _DisAzkarHomeState extends State<DisAzkarHome> {
  Color greenColor = Color.fromRGBO(59, 121, 55, 1.0);
  Color greenColorBot = Color.fromRGBO(59, 121, 55, 1);
  Color redColor = Color(0xffb30000);
  Color grayColor = Color(0xff353535);
  Color blackColor = Colors.black;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
        centerTitle: true,
        title: Text(
          "وَذَكِّرْ",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 27,
            color: greenColor,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 25,
              color: greenColor,
            )),


      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            NewCard("بِسْـمِ اللهِ وَلَجْنـا، وَبِسْـمِ اللهِ خَـرَجْنـا، وَعَلـى رَبِّنـا تَوَكّلْـنا.",1),

          ],
        ),
      ),
    );
  }
}
