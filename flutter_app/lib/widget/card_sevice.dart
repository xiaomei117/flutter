import 'dart:convert';
import 'package:flutter_app/models/star.dart';

import 'file_io.dart';

class CardSevice {
  static final CardSevice cardData = CardSevice._privateConstructor();
  CardSevice._privateConstructor();

  Future<List<Star>> receiveInfo() async {
    List<Star> starDataList;
    starDataList = await FileMaterial().read().then((value) {
      List<dynamic> myData = new List<dynamic>();
      myData = jsonDecode(value);
      List<Star> list = [];
      list.addAll(myData.map((e) => Star.fromJson(e)).toList());
      return list;
    });
    return starDataList;
  }
}
