import 'package:flutter/material.dart';

import '../widget/header_widget.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key, required String appTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,size: 27,),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("ScreenDesignChaellenge",
          style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children:  [
          HeaderWidget(),
          SizedBox(height: 22),
          buildMianButton(),
          SizedBox(height: 32),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Showcasing the finest food, drinks and travel, Recipes, healthy tips, food photography',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMianButton(){
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton(5,"Followers"),
          VerticalDivider(),
          buildButton(38,"Fosts"),
        ],
      ),
    );
  }
  Widget buildButton(int number, String text){
    return FlatButton(
        onPressed: (){},
        child: Column(
          children:  [
            Text(number.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 8,),
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
          ],
        ));
  }
}
