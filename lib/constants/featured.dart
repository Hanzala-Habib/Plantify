import 'package:flutter/material.dart';

import 'colors.dart';

class Featured extends StatelessWidget {
  const Featured({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:
            Container(
              height: 150,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),



    );
  }
}
