import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetTab{
  Widget getStickyTab(String title,[Widget extraWidget]) {
    Color titleColor;
    String iconName;
    if(title == 'Best Match') {
      titleColor=Color.fromARGB(255, 255, 153, 64);
      iconName = 'bestMatchIcon';
    }
    else if(title == 'Recent Viewed') {
      titleColor=Color.fromARGB(255, 194, 73, 255);
      iconName = 'recentVTag';
    }
    else if(title == 'Staff Pick') {
      titleColor=Color.fromARGB(255, 120, 126, 219);
      iconName = 'staffPickIcon';
    }
    else if(title == 'Live') {
      titleColor=Color.fromARGB(255, 75, 160, 255);
      iconName = 'homeLiveIcon';
    }
    else if(title == 'New') {
      titleColor=Color.fromARGB(255, 255, 87, 55);
      iconName = 'newTag';
    }
    return Container(
      height: 45,
      color: Colors.white,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Container(width:8,color: titleColor),
          SizedBox(width: 10),
          Image.asset('images/$iconName.png'),
          SizedBox(width: 8),
          Text(title,
              style: TextStyle(
                  fontSize: 16.0,
                  color: titleColor
              )),
          extraWidget==null?Text(''):extraWidget
        ],
      ),
    );
  }
}