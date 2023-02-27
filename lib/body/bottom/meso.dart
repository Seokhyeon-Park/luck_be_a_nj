import 'package:flutter/material.dart';

class Meso extends StatelessWidget {
  const Meso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2 - AppBar().preferredSize.height,
      width: MediaQuery.of(context).size.width * 0.2,
      padding: const EdgeInsets.all(3),
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: Stack(
              children: [
                Image.asset(
                  'images/gold.png',
                  height: 45,
                  width: 45,
                ),
                const Positioned(
                  bottom: 5,
                  left: 8,
                  child: Text(
                    '',
                    // 'avi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                )
              ]
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Text(
              '0',
              // '0 재석',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
