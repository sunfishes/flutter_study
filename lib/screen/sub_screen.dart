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
        bottom: TabBar(tabs: [//탭바 생성하기: 앱바 하단에 탭바를 생성하여 한 화면에 다수의 탭이 이동할 수있도록 설정
          Tab(text: 'Tab01',),
          Tab(text: 'Tab02',),
          Tab(text: 'Tab03',),
        ]),
      ),
      body: TabBarView(children: [//탭바가 보여지는 화면 생성
        Center(child: Text('Tab 01 content'),),
        Center(child: Text('Tab 02 content'),),
        Center(child: Text('Tab 03 content'),),
      ])
    ),);
  }
}
