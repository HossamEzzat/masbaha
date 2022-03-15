import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'NewCard.dart';


class DisAzkarTasabeh extends StatefulWidget {
  const DisAzkarTasabeh({Key? key}) : super(key: key);

  @override
  _DisAzkarTasabehState createState() => _DisAzkarTasabehState();
}

class _DisAzkarTasabehState extends State<DisAzkarTasabeh> {
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
            NewCard("سُبْحَانَ اللَّهِ",100),
            NewCard("سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",100),
            NewCard("سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",100),
            NewCard("سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",100),
            NewCard("سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ ",100),
            NewCard("لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.",100),
            NewCard("لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",100),
            NewCard("الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",100),
            NewCard("الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",100),
            NewCard("أستغفر الله",100),
            NewCard("سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",100),
            NewCard("لَا إِلَهَ إِلَّا اللَّهُ ",100),
            NewCard("الْلَّهُ أَكْبَرُ ",100),
            NewCard("الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ. ",100),
            NewCard("اللَّهُ أَكْبَرُ كَبِيرًا ، وَالْحَمْدُ لِلَّهِ كَثِيرًا ، وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً.",100),
            NewCard("اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ , وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ , اللَّهُمَّ بَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ إِنَّكَ حَمِيدٌ مَجِيدٌ. ",100),
            NewCard("سُبْحَانَ اللَّهِ ، وَالْحَمْدُ لِلَّهِ ، وَلا إِلَهَ إِلا اللَّهُ ، وَاللَّهُ أَكْبَرُ ، اللَّهُمَّ اغْفِرْ لِي ، اللَّهُمَّ ارْحَمْنِي ، اللَّهُمَّ ارْزُقْنِي. ",100),


          ],
        ),
      ),
    );
  }
}
