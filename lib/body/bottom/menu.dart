import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2 - AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width * 0.2,
      padding: const EdgeInsets.all(3),
      alignment: Alignment.bottomRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: AnimatedButton(
              height: 30,
              width: 55,
              color: Colors.brown,
              child: const Text(
                '옵션',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3),
            child: AnimatedButton(
              height: 30,
              width: 110,
              color: Colors.brown,
              child: const Text(
                '인벤토리',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              onPressed: () {

              },
            ),
          ),
        ],
      ),
    );
  }
}
