import 'dart:convert';

import 'package:flutter/material.dart';
//메인화면
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인화면')),
      body: Column(children: [
          TextButton(onPressed: (){
            //서브화면으로 이동(생성하면서 이동)
            Navigator.pushNamed(context, '/sub', arguments: 'hello');
            //서브화면으로 이동(내 화면을 교체하면서 이동)
            //Navigator.pushReplacementNamed(context, '/sub');
          }, child: Text('클릭하여 서브화면으로 이동'),),
      ],
      ),
      drawer: Drawer(child: ListView(children: [//메인스크린에서 드로어 생성
        DrawerHeader(child: Text('헤더영역'),
        ),
        ListTile(title: Text('홈화면'), onTap: (){//온프레스드와 같이 홈화면을 누르면, 온탭부분에 화면이동을 추가할수있다.
          
        },),
        ListTile(title: Text('메인화면'), onTap: (){

        },),
        ListTile(title: Text('서브화면'), onTap: (){

        },),
      ],
      ),
      ),
    );
  }
}
