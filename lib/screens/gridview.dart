import 'dart:ui';

import 'package:flutter/material.dart';

import '../modal/showcase_modal.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body:GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
            itemCount: showcases.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 260,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                // childAspectRatio: 4.95,
              ), itemBuilder: (context, index){
                Showcase showitem = showcases[index];
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent,
                  ),

                  child: Column(
                    children: [
                     Container(
                       height: 200,
                       width: size.width,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white38
                       ),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Image.asset(showitem.image,fit: BoxFit.cover,
                         ),
                       ),
                     ),
                      SizedBox(height: 10,),
                      Text(showitem.owner,style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w600),)
                    ],
                  ),
                );
          },) ,
        ),
    );
  }
}
