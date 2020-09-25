import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final Image userImage = Image.asset('assets/images/user.png');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: userImage,
      ),
    );
  }
}