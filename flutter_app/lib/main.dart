import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

class ImageAndIconRoute extends StatelessWidget {
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
          stars(),
          stackCard(),
          staffPick(),
          gridView1(),
          Live(),
          gridView2(),
          News(),
          gridView1(),
          advisorButton()

    ]));
  }

  Container advisorButton() {
    return Container(
          margin: EdgeInsets.fromLTRB(106, 23, 100, 19),
          alignment: Alignment.center,
          height: 40,
          width: 169,
          child:Text('All Advisor',style: TextStyle(
            color: Colors.white,
            fontSize: 18
          ),),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 143, 56, 157),
                Color.fromARGB(255, 118, 83, 197),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(5))
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
            physics:NeverScrollableScrollPhysics(),
            childAspectRatio: 0.78,
            padding: EdgeInsets.fromLTRB(16, 0, 15, 0),
            crossAxisSpacing: 16,
            crossAxisCount: 2,
            children: [
              cardInitial(),
              cardInitial()
            ],
          ),
        );
  }

  Container gridView1() {
    return Container(
      height: 400,
      child: GridView.count(
        physics:NeverScrollableScrollPhysics(),
        childAspectRatio: 0.78,
        padding: EdgeInsets.fromLTRB(16, 0, 15, 0),
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        children: [
          cardInitial(),
          cardInitial(),
          cardInitial(),
          cardInitial()
        ],
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
                  borderRadius: BorderRadius.all(Radius.circular(5.0))), //容器外补白
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
                  borderRadius: BorderRadius.all(Radius.circular(5.0))), //容器外补白
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
          Text('FEATURED',style: TextStyle(
            fontSize:14,
            color: Color.fromRGBO(255, 226, 30, 1),
            fontWeight: FontWeight.w900
          ),)
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
              Container(width: 70,child: Text('Stella lasdgzxccsbs', overflow: TextOverflow.ellipsis))
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
          cardInitial(),
          SizedBox(width: 10),
          cardInitial(),
          SizedBox(width: 10),
          cardInitial()
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
          Image.asset('images/4.png'),
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
                    child: clock())
              ],
            )
            ),
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

//这是一个时钟
  Align clock() {
    return Align(
        child: Container(
          //margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
          child: Row(
            children: [
              Container(
                height: 27,
                width: 33,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 5,
                        width: 33,
                        color: Color.fromARGB(255, 244, 170, 255),
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 27,
                          width: 24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0))),
                          child: Column(children: [
                            Opacity(
                              opacity: 0.28,
                              child: Container(
                                height: 13,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(193, 193, 193, 0.01),
                                      Color.fromRGBO(114, 83, 114, 0.8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 13,
                                decoration: BoxDecoration(color: Colors.white))
                          ]),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          '01',
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 19, 152),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 27,
                width: 33,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 5,
                        width: 33,
                        color: Color.fromARGB(255, 244, 170, 255),
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 27,
                          width: 24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0))),
                          child: Column(children: [
                            Opacity(
                              opacity: 0.28,
                              child: Container(
                                height: 13,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(193, 193, 193, 0.01),
                                      Color.fromRGBO(114, 83, 114, 0.8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 13,
                                decoration: BoxDecoration(color: Colors.white))
                          ]),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          '59',
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 19, 152),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 27,
                width: 33,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 5,
                        width: 33,
                        color: Color.fromARGB(255, 244, 170, 255),
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 27,
                          width: 24,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0))),
                          child: Column(children: [
                            Opacity(
                              opacity: 0.28,
                              child: Container(
                                height: 13,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(193, 193, 193, 0.01),
                                      Color.fromRGBO(114, 83, 114, 0.8),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                height: 13,
                                decoration: BoxDecoration(color: Colors.white))
                          ]),
                        )),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          '32',
                          style: TextStyle(
                            color: Color.fromARGB(255, 83, 19, 152),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  //这是一张小卡片
  Container cardInitial() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
      //这是一个卡片
      height: 210,
      width: 150.0,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //第一行组件
        buildContainer1(),
        //第二行组件
        buildContainer2(),
        //第三行组件
        buildContainer3()
      ]),
      //  padding: new EdgeInsets.fromLTRB(190, 5, 10, 0),
      //设置container的内边距，边缘与child之间的距离
      decoration: ShapeDecoration(
        image: new DecorationImage(
          //设置背景图片
          image: AssetImage(
            "images/g5.jpg",
          ),
          fit: BoxFit.cover,
        ),
        //设置圆角
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10)),
      ),
    );
  }

//卡片第一行
  Container buildContainer1() {
    return Container(
      height: 140,
      child: Row(children: [
        //第一行左边文字加纯色背景
        Expanded(
          child: Container(
            height: 21,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(6, 0, 40, 120),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 238, 85, 1),
                borderRadius: BorderRadius.all(Radius.circular(2.0))), //容器外补白
            child: Text(
              "Top Accuracy",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        buildContainer()
      ]),
    );
  }

//卡片第二行
  Container buildContainer2() {
    return Container(
      height: 15,
      child: Row(children: [
        SizedBox(width: 10),
        //第二行左边，纯文字

        Container(
          height: 13,
          width: 95,
          alignment: Alignment.topCenter,
          child: Text(
            "hello everyone,I'm trying to set the style of characterastics."
            "it seems too difficult to solve such a problam",
            textAlign: TextAlign.left, //文本对齐方式：左对齐
            overflow: TextOverflow.ellipsis, //省略方式：省略号
            maxLines: 1,
            style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(255, 255, 255, 0.9),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
        ),

        //第二行右边图片上加文字
        Container(

          height: 13.0,
          width: 35.0,
          decoration: ShapeDecoration(
            image: new DecorationImage(
              //设置背景图片
              image: AssetImage(
                "images/21.png",
              ),
              fit: BoxFit.cover,
            ),
            //设置圆角
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5)),
          ),
          child: Text('5.0',

              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w700)),
          alignment: Alignment.centerRight,
        ),
        SizedBox(
          width: 10,
        )
      ]),
    );
  }

//卡片第三行
  Container buildContainer3() {
    return Container(
      height: 15,
      child: Row(children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Container(
          child: Text(
            "hello everyone,I'm trying to set the style of characterastics."
            "it seems too difficult to solve such a problam",
            textAlign: TextAlign.left, //文本对齐方式：左对齐
            overflow: TextOverflow.ellipsis, //省略方式：省略号
            maxLines: 1,
            style: TextStyle(
                fontSize: 12.0,
                color: Color.fromRGBO(255, 255, 255, 0.7),
                fontWeight: FontWeight.w700),
          ),
        )),
        SizedBox(
          width: 10,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          height: 12.0,
          width: 12.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
        )
      ]),
    );
  }

  //第一行右边column组件合集
  Widget buildContainer() {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 11, 10, 20),
        child: Column(children: [
          Image.asset('images/24h.png',
              width: 20.0, height: 20.0, fit: BoxFit.cover),
          SizedBox(
            height: 4,
          ),
          Image.asset('images/11.png',
              width: 20.0, height: 20.0, fit: BoxFit.cover),
          SizedBox(
            height: 4,
          ),
          Image.asset('images/12.png',
              width: 20.0, height: 20.0, fit: BoxFit.cover),
          SizedBox(
            height: 4,
          ),
          Image.asset('images/15.png',
              width: 20.0, height: 20.0, fit: BoxFit.cover),
        ]),
      ),
    );
  }
}
