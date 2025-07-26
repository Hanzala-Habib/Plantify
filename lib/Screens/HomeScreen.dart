import 'package:flutter/material.dart';
import 'package:plantify/constants/colors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Container(
                    height: 250,
                    width: double.maxFinite,
                    color: mainColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20),
                  child: Image.asset("assets/icons/menu.png"),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hi Plantify",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      // SizedBox(width: 60,),
                      Spacer(),
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 220.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: mainColor,
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    height: 60,

                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 280,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    color: mainColor.withValues(alpha: 0.5),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Image.asset("assets/icons/search.png"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 35),
              child: Row(
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 4),
                      child: Text(
                        "more",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Container(
              height: 280,
              width: 180,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [BoxShadow(
                    color: mainColor,
                    offset: Offset(0, 10),
                    blurRadius: 20
                )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image_1.png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "SAMANTHA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withValues(alpha: 0.8),
                          ),
                        ),
                        Spacer(),
                        Text("\$400",style: TextStyle(fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Russia",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: mainColor.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
