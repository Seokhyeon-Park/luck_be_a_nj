import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class Enhancement extends StatelessWidget {
  const Enhancement({
    Key? key,
    required this.callGamblingInCenter,
  }) : super(key: key);
  final Function callGamblingInCenter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2 - AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width * 0.6,
      alignment: Alignment.center,
      child: AnimatedButton(
        height: 100,
        width: 200,
        child: const Text(
          '도전',
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w800,
            color: Colors.red,
          ),
        ),
        onPressed: () {
          callGamblingInCenter();
        },
      ),
    );
  }
}
