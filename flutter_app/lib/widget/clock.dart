


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {

  Timer sec;
  int timeSeconds;

  void startCountdownTimer() {
    const oneSec = const Duration(seconds: 1);
    var callback = (timer) => {
      setState(() {}),
     // if(timeSeconds >= 3600*24 - 1) sec.cancel()
    };

    sec = Timer.periodic(oneSec, callback);
  }

  void initState() {
    super.initState();
    startCountdownTimer();
  }

  void dispose(){
    sec.cancel();
    super.dispose();
  }



  Widget build(BuildContext context) {
    int countdownHour = 0;
    int countdownMin = 0;
    int countdownSec = 0;

    var today = DateTime.now();
    DateTime requireTime=new DateTime(2021,1,20,12);
    int timeRemaining=today.millisecondsSinceEpoch-requireTime.millisecondsSinceEpoch;
    timeSeconds=timeRemaining~/1000;

    countdownHour = (timeSeconds~/3600)%24;
    countdownMin = (timeSeconds-(timeSeconds~/3600)*3600)~/60;
    countdownSec = timeSeconds%60;

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
                      '${countdownHour}',
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
                      '${countdownMin}',
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
                      '${countdownSec}',
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