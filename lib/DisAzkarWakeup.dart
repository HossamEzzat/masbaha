import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'NewCard.dart';


class DisAzkarWakeup extends StatefulWidget {
  const DisAzkarWakeup({Key? key}) : super(key: key);

  @override
  _DisAzkarWakeupState createState() => _DisAzkarWakeupState();
}

class _DisAzkarWakeupState extends State<DisAzkarWakeup> {
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
            NewCard("الحَمْـدُ لِلّهِ الّذي أَحْـيانا بَعْـدَ ما أَماتَـنا وَإليه النُّـشور.",1),
            NewCard("الحمدُ للهِ الذي عافاني في جَسَدي وَرَدّ عَليّ روحي وَأَذِنَ لي بِذِكْرِه.",1),
            NewCard("لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شَـريكَ له، لهُ المُلـكُ ولهُ الحَمـد، وهوَ على كلّ شيءٍ قدير، سُـبْحانَ اللهِ، والحمْـدُ لله ، ولا إلهَ إلاّ اللهُ واللهُ أكبَر، وَلا حَولَ وَلا قوّة إلاّ باللّهِ العليّ العظيم. رَبِّ اغْفرْ لي. ",1),

          ],
        ),
      ),
    );
  }
}
