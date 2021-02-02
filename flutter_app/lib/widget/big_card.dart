import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/star.dart';
import 'card_sevice.dart';

class BigCard extends StatelessWidget {
  final Star star;
  BigCard({this.star});
  

  @override
  Widget build(BuildContext context) {
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
                image: NetworkImage(star.featureCover),
                fit: BoxFit.cover),
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
        starMark(star.name,star.avatar),
        orderInstruction(star.orderInstruction),
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

  Align orderInstruction(String order) {
    return Align(
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
          order,
          textAlign: TextAlign.left,
          overflow: TextOverflow.clip,
          maxLines: 2,
          style: TextStyle(
              color: Color.fromRGBO(41, 17, 73, 0.8),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Align starMark(String nameOfStar,String imageNet) {
    return Align(
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
                  image: NetworkImage(imageNet),
                  fit: BoxFit.cover),
              //设置圆角
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(50)),
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: 111,
            child: Text(nameOfStar,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(240, 41, 17, 73),
                    fontWeight: FontWeight.w500)),
          ),
          SizedBox(width: 56),
          Icon(Icons.star, size: 12.0, color: Color.fromARGB(240, 83, 19, 152)),
          SizedBox(width: 4),
          Icon(Icons.star, size: 12.0, color: Color.fromARGB(240, 83, 19, 152)),
          SizedBox(width: 4),
          Icon(
            Icons.star,
            size: 12.0,
            color: Color.fromARGB(240, 83, 19, 152),
          ),
          SizedBox(width: 4),
          Icon(Icons.star, size: 12.0, color: Color.fromARGB(240, 83, 19, 152)),
          SizedBox(width: 4),
          Icon(Icons.star, size: 12.0, color: Color.fromARGB(240, 83, 19, 152)),
          SizedBox(width: 4),
          Text("5.0",
              style: TextStyle(
                  color: Color.fromARGB(240, 83, 19, 152),
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 6),
        ]),
      ),
    );
  }
}
