import 'package:flutter/material.dart';

import '../widgets/Custom_play_button.dart';
import '../widgets/custom_intro_avatar.dart';
import '../widgets/intro_header.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroViewBody();
  }
}

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [IntroHeader(), CustomAvatar(), CustomPlayButton()]),
      ),
    );
  }
}
