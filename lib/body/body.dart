import 'package:flutter/material.dart';
import './items.dart';
import './roulette.dart';
import './status.dart';
import 'bottom/bottom.dart';

class Body extends StatefulWidget {
  const Body ({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _rouletteCount = 0;

  @override
  Widget build(BuildContext context) {
    void callGamblingInBody() {
      // stateful로 변경 하고 setState 해서 변수 바꾸면 되나...?
      setState(() {
        _rouletteCount++;
      });
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Items(),
              Roulette(rouletteCount: _rouletteCount),
              const Status(),
            ],
          ),
          Bottom(callGamblingInBottom: callGamblingInBody),
        ],
      )
    );
  }
}
