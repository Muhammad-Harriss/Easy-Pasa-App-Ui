import 'package:flutter/material.dart';

class BouncingImage extends StatefulWidget {
  @override
  _BouncingImageState createState() => _BouncingImageState();
}

class _BouncingImageState extends State<BouncingImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  double _calculateOpacity(double offsetY) {
    double opacity = 1 - (offsetY / 20);
    return opacity.clamp(0.0, 1.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, child) {
        double offsetY = _animation.value;
        return Align(
          alignment: Alignment.topCenter,
          child: Transform.translate(
            offset: Offset(0, offsetY),
            child: Opacity(
              opacity: _calculateOpacity(offsetY),
              child: child,
            ),
          ),
        );
      },
      child: Image.asset(
        'assets/pngs/Animat1.png',
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    );
  }
}
