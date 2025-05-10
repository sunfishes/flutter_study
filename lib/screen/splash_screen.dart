import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      //화면이동(splah->main)
      Navigator.pushNamed(context, '/main');
    },);
    //자동정렬 ctrl + alt + L
    return Scaffold(body: Center(
                    child: Text('시작화면입니다.')
                    ));
  }
}
