import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.23,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        border: Border.all(
            color: Colors.black,
            width: 3
        ),
      ),
    );
  }
}
