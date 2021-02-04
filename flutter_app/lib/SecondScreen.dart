import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/card.dart';
import 'package:flutter_app/widget/list_starinfo.dart';
import 'package:flutter_app/widget/recent_star.dart';
import 'package:flutter_app/widget/sticky_tabbar_delegate.dart';

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
              icon: Icon(Icons.arrow_back_ios,
                  color: Color.fromRGBO(94, 22, 172, 0.98)),
              onPressed: () {
                Navigator.pop(context);
              }),
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.list, color: Color.fromRGBO(94, 22, 172, 0.98)),
              itemBuilder: (BuildContext context) {
                return;
              },
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: allAdvisor(ListStarInfo.listTemp)),
            SliverPersistentHeader(
              // 可以吸顶的TabBar
              pinned: true,
              floating: true,
              delegate: StickyTabBarDelegate(
                  child: Column( children: [
                    Container(
                  height: 45,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(width:8,color: Color.fromARGB(255, 255, 153, 64),),
                      SizedBox(width: 10),
                      Image.asset('images/bestMatchIcon.png'),
                      SizedBox(width: 8),
                      Text('Best Match',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 255, 153, 64),
                          )),
                      SizedBox(width: 87),
                      Text('Find New Match',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Color.fromARGB(255, 83, 19, 152))),
                      SizedBox(width: 5),
                      IconButton(
                          iconSize: 14,
                          icon: Icon(Icons.arrow_forward_ios,
                              color: Color.fromRGBO(94, 22, 172, 0.98)),
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new SecondScreen()),
                            );
                          })
                    ],
                  ),
                ),
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(120, 126, 219, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/staffPickIcon.png'),
                          SizedBox(width: 8),
                          Text('Staff Pick',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(120, 126, 219, 1),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(75, 160, 255, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/homeLiveIcon.png'),
                          SizedBox(width: 8),
                          Text('Live',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(75, 160, 255, 1),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(255, 87, 55, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/newTag.png'),
                          SizedBox(width: 8),
                          Text('New',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(255, 87, 55, 1),
                              )),
                        ],
                      ),
                    ),
              ])),
            ),
            SliverToBoxAdapter(child: RowStars()),
            SliverPersistentHeader(
              // 可以吸顶的TabBar
              pinned: true,
              floating: true,
              delegate: StickyTabBarDelegate(
                  child: Column( children: [
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(120, 126, 219, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/staffPickIcon.png'),
                          SizedBox(width: 8),
                          Text('Staff Pick',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(120, 126, 219, 1),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(75, 160, 255, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/homeLiveIcon.png'),
                          SizedBox(width: 8),
                          Text('Live',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(75, 160, 255, 1),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(width:8,color: Color.fromRGBO(255, 87, 55, 1),),
                          SizedBox(width: 10),
                          Image.asset('images/newTag.png'),
                          SizedBox(width: 8),
                          Text('New',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(255, 87, 55, 1),
                              )),
                        ],
                      ),
                    ),
                  ])),
            ),
            SliverToBoxAdapter(child: Text('Content of Home')),

          ],
        )
        //allAdvisor(ListStarInfo.listTemp)
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
