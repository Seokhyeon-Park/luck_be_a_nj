import 'package:flutter/material.dart';
import './wheel/wheel.dart';

class Roulette extends StatelessWidget {
  const Roulette({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.8;
    double width = MediaQuery.of(context).size.width * 0.54;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Row(
        children: [
          // 5개의 Column 필요
          RouletteWheel(height: height, width: width,),
          RouletteWheel(height: height, width: width,),
          RouletteWheel(height: height, width: width,),
          RouletteWheel(height: height, width: width,),
          RouletteWheel(height: height, width: width,),
        ],
      ),
    );
  }
}
