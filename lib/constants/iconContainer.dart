import 'package:flutter/material.dart';
import 'package:plantify/constants/colors.dart';

class Iconcontainer extends StatelessWidget {
  const Iconcontainer({super.key, required this.imageicon});
final String imageicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: mainColor.withValues(alpha: 0.2),
              offset: Offset(0, 10),
              blurRadius: 10
          )
        ],
        color: Colors.white,
      ),
      child: Image(image: AssetImage(imageicon)),
    );
  }
}
