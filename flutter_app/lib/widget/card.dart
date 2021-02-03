import 'dart:convert';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/star.dart';
import 'package:flutter_app/widget/card_sevice.dart';
import 'package:flutter_app/widget/share_preference_url.dart';
import 'package:flutter_app/widget/stars_info.dart';

class CardInitial extends StatefulWidget {
  final Star star;
  CardInitial({this.star});
  @override
  _CardInitialState createState() => _CardInitialState();
}

class _CardInitialState extends State<CardInitial> {
  SharePreference starID = SharePreference.starPer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        starID.writeList('RecentViewed',widget.star.userId);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new StarsInfo(star: widget.star)),
        );
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 13, 15, 0),
        height: 210,
        width: 150.0,
        child:
            Column(children: [
              SizedBox(height: 5),

          serve(),

          registerTime(),

          starName(widget.star.name),
    
          starBio(widget.star.bio)
        ]),
        decoration: ShapeDecoration(
          //设置背景图片
          image: new DecorationImage(
              image: NetworkImage(widget.star.avatar), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
              //设置圆角
              borderRadius: BorderRadiusDirectional.circular(10)),
        ),
      ),
    );
  }

  Container registerTime() {
    var strTime =widget.star.firstApprovedAt;
    var regTime = DateTime.fromMillisecondsSinceEpoch(strTime);
    var formatTime = formatDate(regTime,[MM,' ',dd,',',yyyy,' ',HH,':',nn,':',ss]);
    return Container(
          height: 15,
          color: Colors.grey,
          child: Text(formatTime.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ))
        );
  }

  Container serve() {
    return Container(
      height: 130,
      child: Row(children: [
        //第一行左边文字加纯色背景
        Expanded(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(6, 0, 40, 110),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 238, 85, 1),
                borderRadius: BorderRadius.all(Radius.circular(2.0))),
            //容器外补白
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

  Container starName(String name) {
    return Container(
      height: 25,
      child: Row(children: [
        SizedBox(width: 10),
        //第二行左边，纯文字
        Container(
          height: 20,
          width: 95,
          alignment: Alignment.topCenter,
          child: Text(
            name,
            textAlign: TextAlign.left, //文本对齐方式：左对齐
            overflow: TextOverflow.ellipsis, //省略方式：省略号
            maxLines: 1,
            style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(255, 255, 255, 0.9),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )
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
        SizedBox(width: 10)
      ]),
    );
  }

  Container starBio(String bio) {
    return Container(
      height: 15,
      child: Row(children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: Text(
              bio,
              textAlign: TextAlign.left, //文本对齐方式：左对齐
              overflow: TextOverflow.ellipsis, //省略方式：省略号
              maxLines: 1,
              style: TextStyle(
                  fontSize: 12.0,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  fontWeight: FontWeight.w700),
            )),
        SizedBox(width: 10),
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
        child: Column(
            children: [
          serviceAttain('images/24h.png','24h'),
              serviceAttain('images/11.png','text'),
              serviceAttain('images/12.png','audio'),
              serviceAttain('images/15.png','video'),
        ]),
      ),
    );
  }

  bool serviceType(String Type){
    for(int i=0;i<widget.star.availableService.length;i++){
      if(widget.star.availableService[i].type <= 3 && Type == '24h') return true;
      else if(widget.star.availableService[i].type == 4 && Type == 'text') return true;
      else if(widget.star.availableService[i].type == 5 && Type == 'audio') return true;
      else if(widget.star.availableService[i].type == 6 && Type == 'video') return true;
    }
    return false;
  }

  Widget serviceAttain(String imageAsset,String serveType) {
    if(serviceType(serveType))
    return Container(
          height: 23,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
          child: Image.asset(imageAsset,
              width: 20.0, height: 20.0, fit: BoxFit.cover),
        );
    else return SizedBox(height: 1);
  }
}
