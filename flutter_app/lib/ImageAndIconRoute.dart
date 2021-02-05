import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/big_card.dart';
import 'package:flutter_app/widget/card_sevice.dart';
import 'package:flutter_app/widget/clock.dart';
import 'package:flutter_app/widget/event_bus.dart';
import 'package:flutter_app/widget/get_sticky_tab.dart';
import 'package:flutter_app/widget/list_starinfo.dart';
import 'package:flutter_app/widget/recent_star.dart';
import 'package:flutter_app/widget/share_preference_url.dart';
import 'SecondScreen.dart';
import 'models/star.dart';
import 'widget/card.dart';
import 'package:sticky_headers/sticky_headers.dart';

class ImageAndIconRoute extends StatefulWidget {
  @override
  _ImageAndIconRouteState createState() {
    return _ImageAndIconRouteState();
  }
}

class _ImageAndIconRouteState extends State<ImageAndIconRoute> {
  StreamSubscription _subscription;
  ListStarInfo listOfStar = ListStarInfo.starData;

  @override
  void initState() {
    super.initState();
    //监听登录事件
    _subscription =
        eventBus.on<EventParam>().listen((EventParam data) => update());
    _subscription.resume();
    loadInfo();
    initPre();
  }

  void update() {
    setState(() {});
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  initPre() async {
    SharePreference starID = SharePreference.starPer;
    await starID.readList().then((value) => SharePreference.listID);
  }

  loadInfo() async {
    CardSevice cardCP = CardSevice.cardData;
    await cardCP.receiveInfo().then((value) => listOfStar.receiveInfo(value));
    setState(() {
      listOfStar.buildList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: [
      firstRow(),
      secondRow(),
      StickyHeader(
        header: GetTab().getStickyTab(
            'Best Match',
            Row(
              children: [
                SizedBox(width: 70),
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
            )),
        content: forthCard(),
      ),
      RowStars(),
      //bigCard(),
      StickyHeader(
        header: GetTab().getStickyTab('Staff Pick'),
        content: gridView(ListStarInfo.pickList),
      ),
      StickyHeader(
        header: GetTab().getStickyTab('Live'),
        content: gridView(ListStarInfo.liveList),
      ),
      StickyHeader(
        header: GetTab().getStickyTab('New'),
        content: gridView(ListStarInfo.newList),
      ),
      advisorButton(context)
    ]);
  }

  Widget bigCard() {
    Star starOfBigCard = new Star();
    if (ListStarInfo.listOfStar.isNotEmpty) {
      starOfBigCard = ListStarInfo.listOfStar[2];
      return BigCard(star: starOfBigCard);
    } else
      return Text('');
  }

  Widget advisorButton(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => new SecondScreen()),
        );
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

  Widget gridView(List list) {
    if (ListStarInfo.listOfStar.isEmpty) {
      return Text('');
    } else {
      if (list.length % 2 == 1) list.removeAt(list.length - 1);
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

//这是神婆小卡片
  Widget forthCard() {
    if (ListStarInfo.listOfStar.isEmpty) {
      return Text('');
    } else {
      return Container(
        height: 220,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 16,
            padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
            itemBuilder: (context, index) {
              Star star = ListStarInfo.listOfStar[index];
              return CardInitial(star: star);
            }),
      );
    }
  }

//这是best match
  Widget thirdRow() {
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
              icon: Icon(Icons.arrow_forward_ios,
                  color: Color.fromRGBO(94, 22, 172, 0.98)),
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new SecondScreen()),
                );
              })
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
