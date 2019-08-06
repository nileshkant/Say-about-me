import 'package:flutter/material.dart';

class PrimaryCard extends StatelessWidget {

  final Widget cardContent;
  // final double cardWidth;
  final double cardHeight;
  final List<double> stops;
  final List<Color> gradientColor;
  final ValueChanged<String> parentAction;

  PrimaryCard({this.cardContent, this.cardHeight, this.parentAction, this.stops, this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: cardHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: stops, // [0.1, 0.9],
              colors: gradientColor,
            ),
          ),
          child: cardContent
        );
  }
}
