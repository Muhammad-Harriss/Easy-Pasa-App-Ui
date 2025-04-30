import 'package:easy_pasa_ui_project/view/Profile_Screen/Profile_main/Profile_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: Colors.transparent, // Makes background transparent
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProfileMain()),
            );
          },
          child: SizedBox(
            height: 50,
            width: 50,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Profile image clipped into a circle
                ClipOval(
                  child: Image.asset(
                    'assets/pngs/profile.jpeg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

                // Positioned menu icon (bottom-right)
                Positioned(
                  bottom: -4,
                  right: -4,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svgs/menu.svg',
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
