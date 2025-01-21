import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_game/views/home_view.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'Tic Tac Toe',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          AvatarGlow(
            glowShape: BoxShape.circle,
            startDelay: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
            glowColor: Colors.white,
            repeat: true,
            child: CircleAvatar(
              backgroundColor: const Color(0xff1D1D1D),
              radius: 90,
              child: ClipOval(
                child: Image.asset(
                  'assets/tic.png',
                  fit: BoxFit.cover,
                  width: 180, // Double the radius to fit the CircleAvatar
                  height: 180,
                ),
              ),
            ),
          ),
          ElevatedButton(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Play',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ))
        ]),
      ),
    );
  }
}
