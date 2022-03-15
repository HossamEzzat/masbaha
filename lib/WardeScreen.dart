import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DisAzkarAfterSala.dart';
import 'DisAzkarBathRoom.dart';
import 'DisAzkarFood.dart';
import 'DisAzkarHome.dart';
import 'DisAzkarMasa.dart';
import 'DisAzkarSabah.dart';
import 'DisAzkarTasabeh.dart';
import 'DisAzkarTravel.dart';
import 'DisAzkarWakeup.dart';
import 'DisazkarClothes.dart';

class Wardescreen extends StatefulWidget {
  const Wardescreen({Key? key}) : super(key: key);

  @override
  _WardescreenState createState() => _WardescreenState();
}

class _WardescreenState extends State<Wardescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: GridView(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarSabah();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار الصباح",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarMasa();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار المساء",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarWakeup();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(13),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار الاستيقاظ من النوم",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarHome();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "الذكر عند دخول البيت" ,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarClothes();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      " عند لبس الثوب",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarBathRoom();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار عند دخول الخلاء ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarTravel();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار عند السفر  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarFood();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار الطعام ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarAfterSala();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "أذكار بعد الصلاة ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DisAzkarTasabeh();
              },));
            },
            child: Container(
              margin: EdgeInsets.all(15),
              height: 120,
              width: 70,
              child: Card(
                color: Colors.lightBlueAccent,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: GridTile(
                  child: Center(
                    child: Text(
                      "تسابيح",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 22,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
