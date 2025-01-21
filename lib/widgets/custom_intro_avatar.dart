import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
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
    );
  }
}
