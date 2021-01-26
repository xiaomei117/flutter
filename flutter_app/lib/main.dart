import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/cardsevice.dart';
import 'package:flutter_app/widget/clock.dart';
import 'package:flutter_app/widget/rowstar.dart';

import 'SecondScreen.dart';
import 'widget/card.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //title: 'Advisor',
      home: new Scaffold(
          appBar: new AppBar(
              backgroundColor: Colors.white,
              title: new Text('Advisor',
                  style: TextStyle(
                      fontSize: 28.0,
                      foreground: Paint()
                        ..shader = LinearGradient(colors: [
                          Color.fromARGB(255, 143, 56, 157),
                          Color.fromARGB(255, 118, 83, 197),
                        ]).createShader(Rect.fromLTWH(0, 0, 30, 0)),
                      fontWeight: FontWeight.w500))),
          body: ImageAndIconRoute()),
    );
  }
}

class ImageAndIconRoute extends StatefulWidget {
  @override
  _ImageAndIconRouteState createState() {
    return _ImageAndIconRouteState();
  }
}

class _ImageAndIconRouteState extends State<ImageAndIconRoute> {

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
      stackCard(),
      staffPick(),
      gridView1(),
      Live(),
      gridView2(),
      News(),
      gridView1(),
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

  Container gridView2() {
    return Container(
      height: 200,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 0.78,
        padding: EdgeInsets.fromLTRB(16, 0, 15, 0),
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: [CardInitial(indexOfStar: 10,), CardInitial(indexOfStar: 11,)]
      ),
    );
  }

  Container gridView1() {
    return Container(
      height: 400,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 0.78,
        padding: EdgeInsets.fromLTRB(16, 0, 15, 0),
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: [CardInitial(indexOfStar: 5,), CardInitial(indexOfStar: 6,), CardInitial(indexOfStar: 7,), CardInitial(indexOfStar: 8,),],
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

//这ye是神婆小卡片
  Stack stackCard() {
    return Stack(children: [
      Container(
        height: 245,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 243, 247),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))),
        margin: EdgeInsets.fromLTRB(18, 24, 13, 0),
        child: Stack(children: [
          Container(
            height: 191,
            child: Container(
              height: 24,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 150),
                child: Row(
                  children: [
                    SizedBox(width: 200),
                    Image.asset('images/24h.png',
                        width: 24.0, height: 24.0, fit: BoxFit.cover),
                    SizedBox(width: 6),
                    Image.asset('images/11.png',
                        width: 24.0, height: 24.0, fit: BoxFit.cover),
                    SizedBox(width: 6),
                    Image.asset('images/12.png',
                        width: 24.0, height: 24.0, fit: BoxFit.cover),
                    SizedBox(width: 6),
                    Image.asset('images/15.png',
                        width: 24.0, height: 24.0, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            decoration: ShapeDecoration(
              image: new DecorationImage(
                //设置背景图片
                image: AssetImage(
                  "images/g4.jpg",
                ),
                fit: BoxFit.cover,
              ),
              //设置圆角

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 21,
              width: 86,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 90, 11, 0),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 238, 85),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              //容器外补白
              child: Text(
                "Top Accuracy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 155, 0, 20),
              width: 344,
              height: 50,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(250, 250, 252, 0.0),
                      Color.fromRGBO(247, 246, 249, 0.52),
                      Color.fromRGBO(244, 243, 247, 1)
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(2.0))),
              child: Row(children: [
                SizedBox(width: 6),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: ShapeDecoration(
                    image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage(
                        "images/g2.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    //设置圆角
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(50)),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Stella Malone",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(240, 41, 17, 73),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 56),
                Icon(
                  Icons.star,
                  size: 12.0,
                  color: Color.fromARGB(240, 83, 19, 152),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.star,
                  size: 12.0,
                  color: Color.fromARGB(240, 83, 19, 152),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.star,
                  size: 12.0,
                  color: Color.fromARGB(240, 83, 19, 152),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.star,
                  size: 12.0,
                  color: Color.fromARGB(240, 83, 19, 152),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.star,
                  size: 12.0,
                  color: Color.fromARGB(240, 83, 19, 152),
                ),
                SizedBox(width: 4),
                Text(
                  "5.0",
                  style: TextStyle(
                      color: Color.fromARGB(240, 83, 19, 152),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 6),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 38,
              width: 272,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(61, 201, 11, 6),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 243, 247, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              //容器外补白
              child: Text(
                "I really appreciate it!I really appreciate it!I really appreciate it!I really appreciate it!I really ",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                style: TextStyle(
                    color: Color.fromRGBO(41, 17, 73, 0.8),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ]),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(15, 33, 0, 0),
        height: 27,
        width: 101,
        child: Row(children: [
          SizedBox(
            width: 5,
          ),
          Image.asset('images/featureDiamond.png'),
          SizedBox(
            width: 5,
          ),
          Text(
            'FEATURED',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(255, 226, 30, 1),
                fontWeight: FontWeight.w900),
          )
        ]),
        decoration: ShapeDecoration(
          image: new DecorationImage(
            //设置背景图片
            image: AssetImage(
              "images/featuredImage.png",
            ),
            fit: BoxFit.cover,
          ),
          //设置圆角
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(2)),
        ),
      ),
    ]);
  }

//这是神婆的头像
  Container stars() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
      height: 90,
      alignment: Alignment.bottomCenter,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g1.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g2.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g3.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g4.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/b1.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g3.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g4.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: ShapeDecoration(
                  image: new DecorationImage(
                      //设置背景图片
                      image: AssetImage("images/g5.jpg"),
                      fit: BoxFit.cover),
                  //设置圆角
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(100)),
                ),
              ),
              SizedBox(height: 4),
              Container(
                  width: 70,
                  child: Text('Stella lasdgzxccsbs',
                      overflow: TextOverflow.ellipsis))
            ],
          ),
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
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 17),
          CardInitial(indexOfStar: 0,),
          SizedBox(width: 10),
          CardInitial(indexOfStar: 1,),
          SizedBox(width: 10),
          CardInitial(indexOfStar: 2,),
        ],
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
          SizedBox(width: 97),

          Text('Find New Match',
              style: TextStyle(
                  fontSize: 14.0, color: Color.fromARGB(255, 83, 19, 152))),
          SizedBox(width: 5),
          Image.asset('images/4.png', fit: BoxFit.cover),
          SizedBox(width: 15),
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
