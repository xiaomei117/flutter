import 'dart:convert';
import 'package:flutter_app/models/star.dart';

import 'fileio.dart';

class CardSevice {
  static final CardSevice cardData = CardSevice._privateConstructor();
  CardSevice._privateConstructor();

  Future<List<Star>> receiveInfo() async{
     List<Star> starDataList = new List<Star>();
     return FileMaterial().read().then((value) {
      List<dynamic> myData = new List<dynamic>();
      myData = jsonDecode(value);
      starDataList.addAll(myData.map((e) => Star.fromJson(e)).toList());
      return starDataList;
    });

  }
  
}