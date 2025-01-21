import 'package:flutter/material.dart';

class HomeHeaders extends StatelessWidget {
  const HomeHeaders({
    super.key,
    required this.ohTurn,
  });

  final bool ohTurn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        "Turn : ${ohTurn ? 'O' : 'X'}",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    ));
  }
}
