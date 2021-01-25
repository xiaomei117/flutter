import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/StarList.dart';

class CardSevice {
  static final CardSevice cardData = CardSevice._privateConstructor();
  CardSevice._privateConstructor();

  Future<List<Star>> receiveInfo() async{
     List<Star> starDataList = new List<Star>();
    rootBundle.loadString("data/starList.json").then((value) {
      List<dynamic> myData = new List<dynamic>();
      myData = jsonDecode(value);
      starDataList.addAll(myData.map((e) => Star.fromJson(e)).toList());
    });
    return starDataList;
  }
  
}