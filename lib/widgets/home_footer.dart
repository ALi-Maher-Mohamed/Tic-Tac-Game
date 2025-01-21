import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({
    super.key,
    required this.ohScore,
    required this.exScore,
  });

  final int ohScore;
  final int exScore;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          children: [
            Text(
              'Score O',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              ohScore.toString(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
        Column(
          children: [
            Text(
              ' Score X',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              exScore.toString(),
              style: TextStyle(color: Colors.white, fontSize: 30),
            )
          ],
        ),
      ]),
    );
  }
}
