import 'package:flutter/material.dart';
import 'package:tic_tac_game/views/home_view.dart';

class CustomPlayButton extends StatelessWidget {
  const CustomPlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            'Play',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ));
  }
}
