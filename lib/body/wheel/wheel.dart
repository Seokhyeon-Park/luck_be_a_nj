import 'package:flutter/material.dart';
import './symbol/symbol.dart';

class RouletteWheel extends StatefulWidget {
  const RouletteWheel({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<RouletteWheel> createState() => _RouletteWheelState();
}

class _RouletteWheelState extends State<RouletteWheel> {
  @override
  Widget build(BuildContext context) {
    double wheelWidth = widget.width / 5 - 1.2;

    return Container(
      height: widget.height,
      width: wheelWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.zero,
          minScale: 1.0,
          maxScale: 1.0,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
