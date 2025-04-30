import 'package:flutter/material.dart';

class TrailingIons extends StatefulWidget {
  const TrailingIons({super.key});

  @override
  State<TrailingIons> createState() => _TrailingIonsState();
}

class _TrailingIonsState extends State<TrailingIons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.search),
        SizedBox(
          height: 2,
        ),
        Icon(Icons.notifications)

      ],
    );
  }
}