import 'package:flutter/material.dart';
import './symbol/symbol.dart';
import 'dart:math';
import 'dart:async';

class RouletteWheel extends StatefulWidget {
  final double height;
  final double width;
  final int rouletteCount;

  const RouletteWheel({
    Key? key,
    required this.height,
    required this.width,
    required this.rouletteCount
  }) : super(key: key);

  @override
  State<RouletteWheel> createState() => _RouletteWheelState();
}

class _RouletteWheelState extends State<RouletteWheel> {
  late final ScrollController _controller;
  late int _previousRouletteCount;
  final List<Widget> _symbols = [];
  bool topDown = true;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _previousRouletteCount = widget.rouletteCount;
    for(int i = 0; i < 40; i++) {
      _symbols.add(Symbol(symbolSize: widget.width / 5 - 1.2));
    }
  }

  @override
  void didUpdateWidget(covariant RouletteWheel oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.rouletteCount != _previousRouletteCount) {
      if(topDown) {
        _scrollToBottom();
        topDown = false;
      } else {
        _scrollToTop();
        topDown = true;
      }
      _previousRouletteCount = widget.rouletteCount;
    }
  }

  void _scrollToBottom() {
    final random = Random();
    final randomDouble = random.nextDouble() * 0.8 * 1000;

    if(_controller.hasClients) {
      Timer(Duration(milliseconds: randomDouble.toInt()), () {
        _controller.animateTo(
          _controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeOut,
        );
      });
    }
  }

  void _scrollToTop() {
    final random = Random();
    final randomDouble = random.nextDouble() * 0.8 * 1000;

    if(_controller.hasClients) {
      Timer(Duration(milliseconds: randomDouble.toInt()), () {
        _controller.animateTo(
          _controller.position.minScrollExtent,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width / 5 - 1.2,
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
            // physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: _symbols,
            ),
          ),
        ),
      ),
    );
  }
}
