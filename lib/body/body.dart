import 'package:flutter/material.dart';
import './items.dart';
import './roulette.dart';
import './status.dart';
import 'bottom/bottom.dart';

class Body extends StatelessWidget {
  const Body ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        children: [
          Row(
            children: const [
              Items(),
              Roulette(),
              Status(),
            ],
          ),
          const Bottom(),
        ],
      )
    );
  }
}
