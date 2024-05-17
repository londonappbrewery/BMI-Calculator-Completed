// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    Key? key,
    required this.colour,
    required this.cardChild,
    this.onPress,
  }) : super(key: key);

  final Color colour;
  final Widget cardChild;
  Function()? onPress = () {};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
