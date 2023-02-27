import 'package:flutter/material.dart';

class Symbol extends StatelessWidget {
  final double symbolSize;

  const Symbol({
    Key? key,
    required this.symbolSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double symbolBorder = 19;

    return Container(
      height: symbolSize - symbolBorder,
      width: symbolSize - symbolBorder,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: const Color.fromRGBO(0x7F, 0x7F, 0x7F, 0.1),
      ),
      // child: Image.asset(),
    );
  }
}
