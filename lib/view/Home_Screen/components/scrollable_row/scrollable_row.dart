

import 'package:easy_pasa_ui_project/view/Home_Screen/components/scrollable_row/bouncing_image.dart';
import 'package:flutter/material.dart';

class ScrollableRow extends StatefulWidget {
  const ScrollableRow({super.key});

  @override
  State<ScrollableRow> createState() => _ScrollableRowState();
}

class _ScrollableRowState extends State<ScrollableRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            "Tap to see what's new?",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 180,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: List.generate(4, (index) => _buildCard())),
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.deepOrange, Colors.yellowAccent],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              
              Positioned(
                top: 50, 
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(200, 100),
                      topRight: Radius.elliptical(200, 100),
                      bottomLeft: Radius.elliptical(200, 100),
                      bottomRight: Radius.elliptical(200, 100),
                    ),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))
                    ],
                  ),
                ),
              ),
              
              Positioned(
                top: -20,
                child: Center(
                  child: BouncingImage(),
                ),
              ),
              
              Positioned(
                bottom: 10, 
                child: Text(
                  "Spend & Score", // Title text
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
