import 'package:flutter/material.dart';
import 'package:gridviewtesting/modal/showcase.dart';

class LandingPage extends StatelessWidget {
  final Showcase showcase;
  const LandingPage({Key? key, required this.showcase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.35,
              child: Stack(
                children: [
                  Image.asset(
                    showcase.image,
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.darken,
                    color: Colors.black.withOpacity(0.4),
                    width: size.width,
                  ),
                  Positioned(
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),),
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
