import 'dart:async';

import 'package:flutter/material.dart';

class MyTimerWidget extends StatefulWidget {
  @override
  _MyTimerWidgetState createState() => _MyTimerWidgetState();
}

class _MyTimerWidgetState extends State<MyTimerWidget> {
  int secondsRemaining = 40;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$secondsRemaining',
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (secondsRemaining == 0) {
        timer.cancel();
      } else {
        setState(() {
          secondsRemaining--;
        });
      }
    });
  }
}
