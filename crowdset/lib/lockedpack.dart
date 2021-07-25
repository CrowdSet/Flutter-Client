import 'package:flutter/material.dart';

class LockedPack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 375,
      height: 200,
      child: Icon(
        Icons.lock,
        color: Colors.grey[300],
        size: 100,
      ),
    );
  }
}
