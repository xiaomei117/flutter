
import 'package:flutter/material.dart';

class CardInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        //这是一张小卡片
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
        decoration: ShapeDecoration(
          //设置背景图片
          image: new DecorationImage(
              image: AssetImage("images/g5.jpg"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            //设置圆角
              borderRadius: BorderRadiusDirectional.circular(10)),
        ),
    );}

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
      SizedBox(width: 10)
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
