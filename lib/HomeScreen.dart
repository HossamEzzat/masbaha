import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;
  String name="سبحان الله ";
  int roll=0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void zeroCounter() {
    setState(() {
      counter = 0;
      roll=0;
    });
  }

  Widget build(BuildContext context) {
    if(counter==0){
      name="سبحان الله ";
    }
    if(counter==15){
      name="الحمد لله";
    }if(counter==30){
      name="لا الله الا الله ";
    }if(counter==45){
      name="الله اكبر";
    }if(counter==60){
      roll++;
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Al-Alim-Mosque.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
             Text(
              name,
              style: (TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,


              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 5, bottom: 5, left: 20, right: 30),
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Text(
                "عدد التسبحات",
                style: (TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
             Text("$counter"
              ,
              style: (TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.lightBlueAccent,
                    offset: Offset(1.5, 1.5),
                    blurRadius: 2.2,
                  ),
                ],
              )),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  incrementCounter();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  shadowColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                  minimumSize: const Size(120, 120),
                ),
                child: const Text(
                  "أضغط",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Text(
                  "الدورة رقم:$roll",
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(1.5, 1.5),
                        blurRadius: 2.2,
                      ),
                    ],
                  )),
                ),
                TextButton(onPressed:zeroCounter, child: Text(
                  "البدا من جديد",
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.lightBlueAccent,
                        offset: Offset(1.5, 1.5),
                        blurRadius: 2.2,
                      ),
                    ],
                  )),
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
