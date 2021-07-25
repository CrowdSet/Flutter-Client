import 'package:flutter/material.dart';
import 'main.dart';

class Pack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 375,
      height: 200,
      child: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Swipe()),
          );
        },
        icon: Icon(
          Icons.play_circle,
          size: 50,
        ),
        color: Colors.white,
      ),
    );
  }
}
