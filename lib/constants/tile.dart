import 'package:flutter/material.dart';
import 'package:plantify/Screens/detail_screen.dart';

import 'colors.dart';

class Tile extends StatelessWidget {
  const Tile({super.key, required this.image, required this.Name, required this.Price, required this.country});
  final String image;
  final String Name;
  final String Price;
  final String country;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailScreen()));
        },
        child: Container(
          height: 150,
          width: 150,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [BoxShadow(
                color: mainColor,
                offset: Offset(0, 5),
                blurRadius: 6
            )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Text(
                      Name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withValues(alpha: 0.8),
                      ),
                    ),
                    Spacer(),
                    Text(Price,style: TextStyle(fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  country,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: mainColor.withValues(alpha: 0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
