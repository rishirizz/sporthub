import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imagePath;
  final double radius;
  const ProfilePicture({
    required this.imagePath,
    required this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
