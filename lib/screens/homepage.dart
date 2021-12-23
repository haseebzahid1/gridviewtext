import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/header_widget.dart';
import 'gridview.dart';

class MyHomePage extends StatelessWidget {
  final String ? appTitle;
   MyHomePage({Key? key, this.appTitle, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String appTitle;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ScreenDesignChaellenge",
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      drawer: Drawer(child: Container()),
      body: ListView(
        children: [

          Column(
            children: [
              HeaderBackground(),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GridViewPage()));
                },
                child: Container(
                  width: size.width * 40/100,
                  height: size.height * 6/100,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                    child: Center(child: Text("GridView",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 22,),))
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
