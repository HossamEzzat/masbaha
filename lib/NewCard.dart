import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class NewCard extends StatefulWidget {

  String txt;

  var count;

  NewCard(this.txt, this.count);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {

  Color bottomColorGreen= Color(0xff3B7937);
  Color bottomColorRed= Color(0xffB30000);
  Color greenColor = Color.fromRGBO(59, 121, 55, 1.0);
  Color greenColorBot = Color.fromRGBO(59, 121, 55, 1);
  Color redColor = Color(0xffb30000);
  Color grayColor = Color(0xff353535);
  Color blackColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: blackColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "${widget.txt }",
              style: TextStyle(
                color: greenColor, fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 15,),
          FlatButton(onPressed: (){
            setState(() {
              if(widget.count!=0){
                widget.count=widget.count-1;
              }
              if(widget.count==0){
                bottomColorGreen=bottomColorRed;
              }
            });
          }, color: bottomColorGreen,
            height: 45,
            minWidth: double.infinity,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child:Text("${widget.count}",style: TextStyle(
              fontSize: 18,
            ),),)
        ],
      ),

    );
  }
}
