import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//서브화면
class SubScreen extends StatelessWidget {
  String msg;
  SubScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        //좌측 버튼 커스텀
        leading: TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('뒤로가기', style: TextStyle(color: Colors.black),)),
        title: Text('서브화면'),
        actions: [
          Icon(Icons.ac_unit_outlined),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('뒤로가기', style: TextStyle(color: Colors.black),),)
        ],
        bottom: TabBar(tabs: [
          Tab(text: 'Tab1',),
          Tab(text: 'Tab2',),
          Tab(text: 'Tab3',),
        ]),
      ),
      body: TabBarView(children: [
        Center(child: Text('Tab 1 content'),),
        Center(child: Text('Tab 2 content'),),
        Center(child: Text('Tab 3 content'),),
      ])
    ),);
  }
}
