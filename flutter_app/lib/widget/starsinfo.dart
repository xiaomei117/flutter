import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/models/star.dart';
import 'package:flutter_app/widget/strings.dart';
import '../ImageAndIconRoute.dart';
import 'cardsevice.dart';
import 'eventbus.dart';
import 'fileio.dart';
import 'package:event_bus/event_bus.dart';
class StarsInfo extends StatefulWidget {
  @override
  final int starIndex;
  StarsInfo({this.starIndex});
  _StarsInfoState createState() => _StarsInfoState();
}

class _StarsInfoState extends State<StarsInfo> {
  final CardSevice info = CardSevice.cardData;
  TextEditingController name=TextEditingController();
  String currentStr='';//用户修改的神婆名字



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: new Text('This is my information',
              style: TextStyle(
                  fontSize: 18.0,
                  foreground: Paint()
                    ..shader = LinearGradient(colors: [
                      Color.fromARGB(255, 143, 56, 157),
                      Color.fromARGB(255, 118, 83, 197),
                    ]).createShader(Rect.fromLTWH(0, 0, 30, 0)),
                  fontWeight: FontWeight.w400)),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,
                  color: Color.fromRGBO(94, 22, 172, 0.98)),
              onPressed: () {
                eventBus.fire(EventParam(this.currentStr));
                Navigator.pop(context);
              }),
        ),
        body: FutureBuilder(
            future: info.receiveInfo(),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.data.length != 0) {
                String imageNet = snapshot.data[widget.starIndex].avatar;
                String nameOfStar = snapshot.data[widget.starIndex].name;
                String bioOfStar = snapshot.data[widget.starIndex].bio;
                int avlSer = snapshot.data[widget.starIndex].availableService.length;

                return ListView(
                  children: [
                    mainInfo(imageNet, nameOfStar, bioOfStar,snapshot),
                    servOfStar(avlSer, snapshot),
                  ],
                );
              } else
                return Text('');
            }));
  }

  Container servOfStar(int avlSer, AsyncSnapshot snapshot) {
    return Container(
      height: 350,
      child: ListView.builder(
          itemCount: avlSer,
          itemExtent: 52,
          itemBuilder: (BuildContext context, int index) {
            int typeOfStar =
                snapshot.data[widget.starIndex].availableService[index].type;
            double priceOfSer =
                snapshot.data[widget.starIndex].availableService[index].price;
            bool tos=false;
            String danwei='/min';
            if(typeOfStar<=3) tos=true;
            return Container(
              height: 52,
              margin: EdgeInsets.fromLTRB(18, 9, 13, 0),
              color: Color.fromRGBO(246, 235, 255, 1),
              child: Row(
                children: [
                  SizedBox(width: 29),
                  textOfServ(typeOfStar,tos),
                  SizedBox(width: 50),
                  Container(
                      height: 32,
                      width: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 144, 55, 155),
                              Color.fromARGB(255, 114, 86, 202),
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.monetization_on_sharp,
                            color: Colors.amber,
                          ),
                          SizedBox(width: 5),
                          Text('$priceOfSer'+'${tos==false?danwei:''}',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(255, 225, 28, 1)))
                        ],
                      ))
                ],
              ),
            );
          }),
    );
  }

  Container textOfServ(int typeOfStar,bool typeIndex) {
    if(typeIndex) return Container(
      width: 136,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings(typeOfStar).title(),
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(83, 19, 152, 1))),
          Text('Delivered within 24h',
              maxLines: 1,
              overflow: TextOverflow.clip,
              style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(83, 19, 152, 0.4)))
        ],
      ),
    );
    else return Container(
                  width: 136,
                  child: Text(Strings(typeOfStar).title(),
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(83, 19, 152, 1))),
                );
  }

  Container mainInfo(String imageNet, String nameOfStar, String bioOfStar, AsyncSnapshot<dynamic> snapshot) {
    return Container(
      height: 200,
      alignment: Alignment.bottomCenter,
      color: Colors.yellow,
      child: Row(
        children: [
          SizedBox(width: 17),
          Container(
            width: 57,
            height: 57,
            decoration: ShapeDecoration(
              image: new DecorationImage(
                  image: NetworkImage(imageNet), fit: BoxFit.cover),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(100),
                  side: BorderSide(color: Color.fromRGBO(100, 196, 68, 1))),
            ),
          ),
          SizedBox(width: 8),
          starsName(nameOfStar, bioOfStar,snapshot)
        ],
      ),
    );
  }

  Container starsName(String nameOfStar, String bioOfStar, AsyncSnapshot snapshot) {

    return Container(
          height: 67,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 200,
                height: 30,
                child: TextField(
                    controller: this.name=TextEditingController.fromValue(
                        TextEditingValue(
                            text: nameOfStar,
                            selection: TextSelection.fromPosition(
                              ///用来设置文本的位置
                              TextPosition(
                                  affinity: TextAffinity.downstream,
                                  /// 光标向后移动的长度
                                  offset: nameOfStar.length-1),)
                        )
                    ),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(41, 17, 73, 1)),
                  focusNode: FocusNode(),

                  decoration: InputDecoration(
                    isCollapsed: true,
                    ),

                  onChanged: (value){
                      this.currentStr=value;
                  },

                  onSubmitted: (value){
                    _upDataName(snapshot);
                   },
                  inputFormatters: [LengthLimitingTextInputFormatter(20)],
                ),
              ),
              Text(bioOfStar,overflow: TextOverflow.ellipsis,style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(153, 153, 153, 1)))
            ],
          ),
        );
  }


  Future<Null> _upDataName(AsyncSnapshot snapshot) async {


    List<Star> newStarList = new List<Star>();
    newStarList.addAll(snapshot.data);
    newStarList[widget.starIndex].name=this.currentStr;

    await (await FileMaterial().getLocalFile()).writeAsString(json.encode(newStarList));
  }

}
