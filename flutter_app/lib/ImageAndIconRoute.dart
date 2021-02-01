import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/bigcard.dart';
import 'package:flutter_app/widget/clock.dart';
import 'package:flutter_app/widget/eventbus.dart';
import 'package:flutter_app/widget/rowstar.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_app/widget/starsinfo.dart';
import 'SecondScreen.dart';
import 'widget/card.dart';

class ImageAndIconRoute extends StatefulWidget {
  @override
  _ImageAndIconRouteState createState() {
    return _ImageAndIconRouteState();
  }
}

class _ImageAndIconRouteState extends State<ImageAndIconRoute> {
  StreamSubscription _subscription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //监听登录事件
    _subscription=eventBus.on<EventParam>().listen((EventParam data) =>
         upData()
    );
    _subscription.resume();
  }

  void upData(){
    setState((){

    });
  }

  void dispose(){
    _subscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: ListView(children: [
          firstRow(),
          secondRow(),
          thirdRow(),
          forthCard(),
          rencentView(),
          RowStars(),
          BigCard(indexOfStar: 1),
          staffPick(),
          gridView(4),
          Live(),
          gridView(7),
          News(),
          gridView(9),
          advisorButton(context)
        ]));
  }

  Widget advisorButton(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => new SecondScreen()),
        // );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(106, 23, 100, 19),
        alignment: Alignment.center,
        height: 40,
        width: 169,
        child: Text(
          'All advisor',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 143, 56, 157),
                Color.fromARGB(255, 118, 83, 197),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }

  Container News() {
    return Container(
      height: 45,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 18),
          Image.asset('images/newTag.png'),
          SizedBox(width: 8),
          Text('New',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromRGBO(255, 87, 55, 1),
              )),
        ],
      ),
    );
  }

  Container Live() {
    return Container(
      height: 45,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 18),
          Image.asset('images/homeLiveIcon.png'),
          SizedBox(width: 8),
          Text('Live',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromRGBO(75, 160, 255, 1),
              )),
        ],
      ),
    );
  }

  Container gridView(int str) {
    return Container(
      height: 450,
      child:
      GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.84
        ),
        padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
        itemBuilder: (context,index){
          return CardInitial(indexOfStar: index+str);
        },
      ),
    );
  }

  Container staffPick() {
    return Container(
      height: 45,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 18),
          Image.asset('images/staffPickIcon.png'),
          SizedBox(width: 8),
          Text('Staff Pick',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromRGBO(120, 126, 219, 1),
              )),
        ],
      ),
    );
  }

//这是recentview
  Container rencentView() {
    return Container(
      height: 45,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 18),
          Image.asset('images/recentVTag.png'),
          SizedBox(width: 8),
          Text('Recent Viewed',
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 194, 73, 255),
              )),
        ],
      ),
    );
  }

//这是神婆小卡片
  Container forthCard() {
    return Container(
      height: 220,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
          itemBuilder: (context, index) {
            return CardInitial(indexOfStar: index);
          }
      ),
    );
  }

//这是best match
  Container thirdRow() {
    return Container(
      height: 45,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          SizedBox(width: 18),
          Image.asset('images/bestMatchIcon.png'),
          SizedBox(width: 8),
          Text('Best Match',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.orangeAccent,
              )),
          SizedBox(width: 87),
          Text('Find New Match',
              style: TextStyle(
                  fontSize: 14.0, color: Color.fromARGB(255, 83, 19, 152))),
          SizedBox(width: 5),
          IconButton(
              iconSize: 14,
              icon: Icon(Icons.arrow_forward_ios,color: Color.fromRGBO(94, 22,172, 0.98)),
              alignment: Alignment.centerLeft,
              onPressed: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new SecondScreen()),
                );
              }
          )
        ],
      ),
    );
  }

  //这是页面第二行
  Container secondRow() {
    return Container(
        height: 100,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
                height: 33,
                decoration:
                BoxDecoration(color: Color.fromRGBO(62, 33, 55, 0.7)),
                child: Row(
                  children: [
                    SizedBox(width: 13),
                    Container(
                      width: 170,
                      child: Text('START IN',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(width: 52),
                    Container(
                      child: Clock(),
                    )
                  ],
                )),
            Align(
                alignment: Alignment(0, 0),
                child: Text('Soulight Big Sale Day!',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic))),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.purple,
              Colors.white,
            ],
          ),
        ));
  }

  //这是页面第一行
  Container firstRow() {
    return Container(
        child: Row(
          children: [
            SizedBox(width: 20),
            Image.asset('images/label.png'),
            SizedBox(width: 20),
            Text('Enjoy 30% OFF Discount of Your First 24h',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                )),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 177, 106, 255),
              Color.fromARGB(255, 255, 124, 92),
            ],
          ),
        ));
  }
}