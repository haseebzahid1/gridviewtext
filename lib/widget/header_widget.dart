import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildHeaderBackground(),   /////background top img
          // const SizedBox(height: 24),
        Positioned(
          right: 0,
            child: PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("View Profile")),
                  PopupMenuItem(child: Text("Add to friends")),
                ];
              },
            )
        ),
        Positioned(
          bottom: 0,
          left: 24,
          child: buildInnerBackground(context),
        )
      ],
    );
  }





  Widget buildInnerBackground(BuildContext context){
    return Row(
      children: [
        Container (
          height: 92,
          width: 92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  image: AssetImage("assets/images/profile.jpg"),fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).scaffoldBackgroundColor,spreadRadius: 4
                ),
              ]
          ),
        ),
        SizedBox(width: 20,),
        Column(
          children: [
            const SizedBox(height: 10,),
            Text("TasteMe",style: TextStyle(fontSize: 19,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blueAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).scaffoldBackgroundColor,spreadRadius: 4,
                      ),
                    ]
                ),
                child: Text("Follow",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white),),
              ),
            ),
          ],
        ),
      ],
    );
  }
  Widget buildHeaderBackground(){
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 152,
          decoration: BoxDecoration(

          ),
          child: Image.asset(
            'assets/images/pancake.jpg',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
         SizedBox(height: 24,),
         // SizedBox(height: 24,child: Container(color: Colors.red),),
      ],
    );
  }
}
