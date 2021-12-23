
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          height: 200,
          color: Colors.transparent,///////////////////////////////

          child: Stack(
            children: [
              Image.asset("assets/images/pancake.jpg",fit:BoxFit.cover,colorBlendMode: BlendMode.darken,color: Colors.black.withOpacity(0.4),width: size.width,height: 153,),
              Positioned(
                top: 100,
                // left: 24,
                child: Container(
                  width: size.width,
                  // height: s,
                  child: Row(
                    children: [
                      SizedBox(width: 24,),
                      Container(
                        width:92,
                        height:92,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(width: 14,),
                      Column(

                        children: [
                          Text("Tasteme",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),),
                          SizedBox(height: 7,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 14,vertical: 3),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent,
                                ),
                                // width: 200,
                                child: Text("Follow",style: TextStyle(color:Colors.white,fontSize: 19),)),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }
}
