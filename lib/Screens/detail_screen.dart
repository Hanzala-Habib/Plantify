import 'package:flutter/material.dart';
import 'package:plantify/constants/iconContainer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Row(children: [
        //column 1
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(

          children: [
            Container(
              height: 70,
              width: 70,
              child: Image(image: AssetImage("assets/icons/back_arrow.png")),
            ),
            SizedBox(height: 90,),
            Iconcontainer(imageicon: "assets/icons/sun.png"),
            SizedBox(height: 60,),
            Iconcontainer(imageicon: "assets/icons/icon_2.png"),
            SizedBox(height: 60,),
            Iconcontainer(imageicon: "assets/icons/icon_3.png"),
            SizedBox(height: 60,),
            Iconcontainer(imageicon:"assets/icons/icon_4.png" )
          ],
        ),
      ),
        //column 2
        Column(
          children: [
            Container(
              height: 300,
              width: 310,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
              ),
            )
          ],
        )
    ])]));
  }
}
