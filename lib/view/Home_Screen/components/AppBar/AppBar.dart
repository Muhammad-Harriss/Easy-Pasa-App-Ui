
import 'package:easy_pasa_ui_project/view/Home_Screen/components/AppBar/Menu.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/AppBar/logo.dart';
import 'package:easy_pasa_ui_project/view/Home_Screen/components/AppBar/trailing_ions.dart';

import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFACE8BC),
                  Color(0xFFBBE38A),
                  
                  Color(0xFFACE8BC),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Menu(),
                Logo(),
                TrailingIons(),
              ],
            ),
          );
  }
}