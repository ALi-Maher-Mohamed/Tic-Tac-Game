import 'package:flutter/material.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tic Tac Toe',
      style: TextStyle(color: Colors.white, fontSize: 50),
    );
  }
}
