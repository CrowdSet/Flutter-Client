import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

// Link to DB
final List data = [
  {
    'color': Colors.red,
  },
  {
    'color': Colors.green,
  },
  {
    'color': Colors.blue,
  }
];
 
class SwipeWidget extends StatefulWidget {
  @override
  _SwipeWidgetState createState() => _SwipeWidgetState();
}
 
class _SwipeWidgetState extends State<SwipeWidget> {
  // Dynamically load cards from database
  List<Card> cards = [
    Card(
      data[0]['color'],
    ),
    Card(
      data[1]['color'],
    ),
    Card(
      data[2]['color'],
    ),
  ];
 
  @override
  Widget build(BuildContext context) {
    // Stack of cards that can be swiped. Set width, height, etc here.
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.7,
      // Important to keep as a stack to have overlay of cards.
      child: Stack(
        children: cards,
      ),
    );
  }
}
 
class Card extends StatelessWidget {
  // Made to distinguish cards
  // Add your own applicable data here
  final Color color;
  Card(this.color);
 
  @override
  Widget build(BuildContext context) {
    return Swipable(
      // Set the swipable widget
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: color,
        ),
      ),
 
      // onSwipeRight, left, up, down, cancel, etc...
    );
  }
}
