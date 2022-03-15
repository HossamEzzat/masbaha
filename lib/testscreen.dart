import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';

import 'BotomSheetHelper.dart';
import 'HomeScreen.dart';
import 'TimeSalate.dart';
import 'WardeScreen.dart';


class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen>
    with SingleTickerProviderStateMixin {
  final tabList = ['السبحة الالكترونية', 'حصن المسلم'];
  late TabController _tabController;
  final tab = [HomeScreen()];

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff000000),
          centerTitle: true,
          title: Text(
            "وَذَكِّرْ",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 27,
                color: Color.fromRGBO(59, 121, 55, 1)),
          ),
          leading: GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context,
                  builder: (BuildContext context) {
                    return TimeSalate();
                  });
            },
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.mosque,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(context: context,
                      builder: (BuildContext context) {
                        return BotomSheetHelper();
                      }
                  );
                },
                icon: Icon(
                  Icons.info_outline_rounded,
                  size: 30,
                  color: Color.fromRGBO(59, 121, 55, 1),
                ))
          ],
          bottom: TabBar(
            tabs: tabList.map((item) {
              return Tab(
                text: item,
              );
            }).toList(),
            labelStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            indicator: PointTabIndicator(
              position: PointTabIndicatorPosition.bottom,
              color: Color.fromRGBO(59, 121, 55, 1),
              insets: EdgeInsets.only(bottom: 8),
            ),
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomeScreen(),
            Wardescreen(),
          ],
        ),
      ),
    );
  }
}
