import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BotomSheetHelper extends StatefulWidget {
  const BotomSheetHelper({Key? key}) : super(key: key);

  @override
  _BotomSheetHelperState createState() => _BotomSheetHelperState();
}

class _BotomSheetHelperState extends State<BotomSheetHelper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "للمساعدة",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.grey[800],
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, alignment: Alignment.topRight,
                      icon: Icon(
                        Icons.close_sharp,
                        size: 30,

                      ))
                ],
              ),
            ),
            Text(
              """هذا الابلكيشن معمول من اجل الخير فلا تغفل عن ذكر الله
                      
                  
                       
              
              
              
              hossam ezzat
              """,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
