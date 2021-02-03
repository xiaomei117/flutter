import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/card.dart';
import 'package:flutter_app/widget/list_starinfo.dart';

import 'models/star.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text('Get Advice',
            style: TextStyle(
            fontSize: 18.0,
            foreground: Paint()
              ..shader = LinearGradient(colors: [
                Color.fromARGB(255, 143, 56, 157),
                Color.fromARGB(255, 118, 83, 197),
              ]).createShader(Rect.fromLTWH(0, 0, 30, 0)),
            fontWeight: FontWeight.w400)),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(94, 22,172, 0.98)),
            onPressed: (){
              Navigator.pop(context);
            }),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.list,color: Color.fromRGBO(94, 22,172, 0.98)),
              itemBuilder: (BuildContext context) {
                return ;
              },)
        ],

      ),
      body: allAdvisor(ListStarInfo.listTemp)
    );
  }

  Widget allAdvisor(List list) {
    if (ListStarInfo.listOfStar.isEmpty) {
      return Text('');
    } else {
      return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: list.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              childAspectRatio: 0.8),
          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
          itemBuilder: (context, index) {
            Star star = list[index];
            return CardInitial(star: star);
          });
    }
  }


}

