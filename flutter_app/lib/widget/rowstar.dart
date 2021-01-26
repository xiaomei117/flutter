import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/StarList.dart';

import 'cardsevice.dart';

class RowStars extends StatelessWidget {
  final CardSevice info = CardSevice.cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(8, 14, 0, 0),
      width: 86,
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemExtent: 86,
          itemBuilder: (context, index) {
            return FutureBuilder(
                future: info.receiveInfo(),
                initialData: [],
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState==ConnectionState.done&&snapshot.data.length!=0)
                     return Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: ShapeDecoration(
                            image: new DecorationImage(
                                //设置背景图片
                                image: NetworkImage(snapshot.data[index].avatar),
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
                            child: Text(snapshot.data[index].name,
                                overflow: TextOverflow.ellipsis))
                      ],
                    );
                  else
                    return Text('');
                });
          }),
    );
  }
}
