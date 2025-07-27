import 'package:flutter/material.dart';

class Iconcontainer extends StatelessWidget {
  const Iconcontainer({super.key, required this.imageicon});
final String imageicon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Image(image: AssetImage(imageicon)),
    );
  }
}
