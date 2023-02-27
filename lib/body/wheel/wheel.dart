import 'package:flutter/material.dart';
import './symbol/symbol.dart';
import 'dart:math';
import 'dart:async';

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
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    final random = Random();
    final randomDouble = random.nextDouble() * 0.6 * 1000;

    if(_controller.hasClients) {
      Timer(Duration(milliseconds: randomDouble.toInt()), () {
        _controller.animateTo(
          _controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOut,
        );
      });
    }
  }

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
            controller: _controller,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
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
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
                Symbol(symbolSize: wheelWidth),
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