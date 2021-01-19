


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clock extends StatelessWidget{
  Widget build(BuildContext context) {
    int countdownhour = 0;
    int countdownmin = 0;
    int countdownsec = 0;
    var today = DateTime.now();
    DateTime require_time=new DateTime(2021,1,19,12);
    int time_remaining=today.millisecondsSinceEpoch-require_time.millisecondsSinceEpoch;
    int time_seconds=time_remaining~/1000;

    countdownhour = time_seconds~/3600;
    countdownmin = (time_seconds-countdownhour*3600)~/60;
    countdownsec = time_seconds%60;

    return Row(
        children: [
          Container(
            height: 27,
            width: 33,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 5,
                    width: 33,
                    color: Color.fromARGB(255, 244, 170, 255),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 27,
                      width: 24,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2.0))),
                      child: Column(children: [
                        Opacity(
                          opacity: 0.28,
                          child: Container(
                            height: 13,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(193, 193, 193, 0.01),
                                  Color.fromRGBO(114, 83, 114, 0.8),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 13,
                            decoration: BoxDecoration(color: Colors.white))
                      ]),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${countdownhour}',
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 19, 152),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 27,
            width: 33,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 5,
                    width: 33,
                    color: Color.fromARGB(255, 244, 170, 255),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 27,
                      width: 24,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2.0))),
                      child: Column(children: [
                        Opacity(
                          opacity: 0.28,
                          child: Container(
                            height: 13,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(193, 193, 193, 0.01),
                                  Color.fromRGBO(114, 83, 114, 0.8),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 13,
                            decoration: BoxDecoration(color: Colors.white))
                      ]),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${countdownmin}',
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 19, 152),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 27,
            width: 33,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 5,
                    width: 33,
                    color: Color.fromARGB(255, 244, 170, 255),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 27,
                      width: 24,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2.0))),
                      child: Column(children: [
                        Opacity(
                          opacity: 0.28,
                          child: Container(
                            height: 13,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(193, 193, 193, 0.01),
                                  Color.fromRGBO(114, 83, 114, 0.8),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height: 13,
                            decoration: BoxDecoration(color: Colors.white))
                      ]),
                    )),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      '${countdownsec}',
                      style: TextStyle(
                        color: Color.fromARGB(255, 83, 19, 152),
                      ),
                    ))
              ],
            ),
          )
        ],

    );

  }
}