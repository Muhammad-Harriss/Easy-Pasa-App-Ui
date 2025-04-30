
import 'package:easy_pasa_ui_project/view/Home_Screen/components/AppBar/Title_text.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      // width: 60, <-- REMOVE THIS LINE!!
      child: Row(
        mainAxisSize: MainAxisSize.min, // important!
        children: [
          Image.asset(
            'assets/pngs/logo.png',
            height: 70,
            width: 70,
            fit: BoxFit.contain,
          ),
          
          TitleText(),
        ],
      ),
    );
  }
}
