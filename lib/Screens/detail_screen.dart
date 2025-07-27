import 'package:flutter/material.dart';
import 'package:plantify/constants/colors.dart';
import 'package:plantify/constants/iconContainer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.image, required this.Name, required this.Price});

  final String image;
  final String Name;
  final String Price;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            //column 1
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
        
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                    child: Image(image: AssetImage("assets/icons/back_arrow.png")),
                  ),
                ),
                SizedBox(height: 70,),
                Iconcontainer(imageicon: "assets/icons/sun.png"),
                SizedBox(height: 35,),
                Iconcontainer(imageicon: "assets/icons/icon_2.png"),
                SizedBox(height: 35,),
                Iconcontainer(imageicon: "assets/icons/icon_3.png"),
                SizedBox(height: 35,),
                Iconcontainer(imageicon:"assets/icons/icon_4.png" )
              ],
            ),
          ),
        
            SizedBox(width: 10,),
            //column 2
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 530,
                      width: 260,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: mainColor.withValues(alpha: 0.2),
                            offset: Offset(-5, 5),
                            blurRadius: 20
                          )
                        ],
        
                          image: DecorationImage(
                              fit:BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage(image)),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
                      ),
                    )
                  ],
                )
              ],
            )
        ]),
          SizedBox(height: 40,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left:  8.0),
                  child: Text("Russia",style: TextStyle(fontSize: 24,color: mainColor.withValues(alpha: 0.5)),),
                ),
                SizedBox(height: 10,),

                Container(
                  height:100 ,
                width: 130,
                child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                decoration: BoxDecoration(
                    color: mainColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50))
                ),
               )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Column(

                children: [
                Text(Price,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: mainColor),),
                SizedBox(height: 80,),
                  Text("Description",style: TextStyle(fontSize: 24),),
                  SizedBox(height: 20,),


              ],),
            )],
          )
        ]
        ),
      )),
    );
  }
}
