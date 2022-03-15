import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TimeSalate extends StatefulWidget {
  const TimeSalate({Key? key}) : super(key: key);

  @override
  _TimeSalateState createState() => _TimeSalateState();
}

class _TimeSalateState extends State<TimeSalate> {
  var Isha,Maghrib,Asr,Dhuhr,Fajr,date;
  getAzan() async{
    var url = Uri.parse('https://api.pray.zone/v2/times/today.json?city=zagazig');
    print(url);
    var response = await http.get(url);
    var responseb = jsonDecode(response.body)["results"]["datetime"][0];
    return responseb;

  }




  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future:getAzan(),
          builder: (

              BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if(snapshot.hasData){
              return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${snapshot.data["date"]["gregorian"]} أوقات الصلاة  ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.green,
                            ),
                          ),
                          IconButton(onPressed: () {
                            Navigator.pop(context);
                          }, alignment: Alignment.topRight,
                              icon: Icon(
                                Icons.close_sharp,
                                size: 30,
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                        endIndent: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                      child: Container(
                        color: Colors.white54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 50
                              ,child: Text(
                              "${snapshot.data["times"]["Fajr"]}",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15,
                                  color: Color.fromRGBO(0, 0, 0, 1.0)),
                              textAlign: TextAlign.left,
                            ),
                            ),
                            Expanded(
                              flex: 50,
                              child: Text(
                                "الفجر",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    color: Color.fromRGBO(5, 5, 5, 1.0)),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                        endIndent: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                      child: Container(
                        color: Colors.white60,
                        child: Container(
                          color: Colors.white54,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 50
                                ,child: Text(
                                "${snapshot.data["times"]["Dhuhr"]}",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 1.0)),
                                textAlign: TextAlign.left,
                              ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Text(
                                  "الظهر",
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                      color: Color.fromRGBO(4, 9, 4, 1.0)),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                        endIndent: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                      child: Container(
                        color: Color.fromRGBO(255, 215, 65, 1.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 50
                              ,child: Text(
                              "${snapshot.data["times"]["Asr"]}",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15,
                                  color: Color.fromRGBO(15, 16, 15, 1.0)),
                              textAlign: TextAlign.left,
                            ),
                            ),
                            Expanded(
                              flex: 50,
                              child: Text(
                                "العصر",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    color: Color.fromRGBO(16, 17, 16, 1.0)),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                        endIndent: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                      child: Container(
                        color: Colors.white54,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 50
                              ,child: Text(
                              "${snapshot.data["times"]["Maghrib"]}",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15,
                                  color: Color.fromRGBO(11, 12, 11, 1.0)),
                              textAlign: TextAlign.left,
                            ),
                            ),
                            Expanded(
                              flex: 50,
                              child: Text(
                                "المغرب",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    color: Color.fromRGBO(17, 19, 16, 1.0)),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                      child: Divider(
                        color: Colors.grey,
                        height: 1,
                        endIndent: 8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                      child: Container(
                        color: Color.fromRGBO(255, 215, 65, 1.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 50
                              ,child: Text(
                              "${snapshot.data["times"]["Isha"]}",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15,
                                  color: Color.fromRGBO(12, 12, 12, 1.0)),
                              textAlign: TextAlign.left,
                            ),
                            ),
                            Expanded(
                              flex: 50,
                              child: Text(
                                "العشاء",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 20,
                                    color: Color.fromRGBO(9, 17, 8, 1.0)),
                                textAlign: TextAlign.right,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ]);
            }else{
              return
                Center(
                  child: CircularProgressIndicator(),
                );
            }
          },

        ),
      ),
    );
  }
}

