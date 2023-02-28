import 'package:flutter/material.dart';
import './meso.dart';
import './center.dart';
import './menu.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
    required this.callGamblingInBottom,
  }) : super(key: key);

  final Function callGamblingInBottom;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height * 0.2 - AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        // border: Border.all(
        //   color: Colors.black,
        //   width: 3,
        // )
      ),
      child: Row(
        children: [
          const Meso(),
          Enhancement(callGamblingInCenter: callGamblingInBottom),
          const Menu(),
        ],
      ),
    );
  }
}
