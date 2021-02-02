
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/star.dart';

import 'package:flutter_app/widget/share_preference_url.dart';
import 'list_starinfo.dart';

class RowStars extends StatefulWidget {
  @override
  _RowStarsState createState() => _RowStarsState();
}

class _RowStarsState extends State<RowStars> {
  @override
  Widget build(BuildContext context) {
    return starRecentViewed();
  }

  Star searchStar(String starID){
    Star starNeed = new Star();
    for(int i=0;i<ListStarInfo.listOfStar.length;i++){
      if(ListStarInfo.listOfStar[i].userId == starID) starNeed=ListStarInfo.listOfStar[i];
    }
    return starNeed;
  }

  Widget starRecentViewed() {
    int len=SharePreference.listID.length;
    if(len!=0){
      return Column(
        children: [
          Container(
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
        ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(8, 14, 0, 0),
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: len,
                itemExtent: 86,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: ShapeDecoration(
                          image: new DecorationImage(
                            //设置背景图片
                              image: NetworkImage(searchStar(SharePreference.listID[len-1-index]).avatar),
                              fit: BoxFit.cover),
                          //设置圆角
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadiusDirectional.circular(100)),
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                          width: 70,
                          child: Text(
                              searchStar(SharePreference.listID[len-1-index]).name,
                              overflow: TextOverflow.ellipsis))
                    ],
                  );
                }),
          ),
        ],
      );
    }
    else return Text('');
  }
}