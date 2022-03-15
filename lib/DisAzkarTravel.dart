import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'NewCard.dart';


class DisAzkarTravel extends StatefulWidget {
  const DisAzkarTravel({Key? key}) : super(key: key);

  @override
  _DisAzkarTravelState createState() => _DisAzkarTravelState();
}

class _DisAzkarTravelState extends State<DisAzkarTravel> {
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
            NewCard("سُبْحانَ الَّذِي سخَّرَ لَنَا هَذَا وَمَا كنَّا لَهُ مُقْرِنينَ، وَإِنَّا إِلى ربِّنَا لمُنْقَلِبُونَ، اللَّهُمَّ إِنَّا نَسْأَلُكَ في سَفَرِنَا هذا البرَّ والتَّقوى، ومِنَ العَمَلِ ما تَرْضى، اللَّهُمَّ هَوِّنْ علَيْنا سفَرَنَا هَذَا، وَاطْوِ عنَّا بُعْدَهُ، اللَّهُمَّ أَنتَ الصَّاحِبُ في السَّفَرِ، وَالخَلِيفَةُ في الأَهْلِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ، وكآبةِ المَنْظَرِ، وَسُوءِ المُنْقَلَبِ في المالِ والأهلِ وَالوَلَدِ",1),

          ],
        ),
      ),
    );
  }
}
