import 'package:flutter/cupertino.dart';

class OutwardCrescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(-30, 70);
    path.quadraticBezierTo(
      size.width * 0.5,
      0, // Adjust this negative value to control the outward curvature
      size.width + 30,
      70,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
