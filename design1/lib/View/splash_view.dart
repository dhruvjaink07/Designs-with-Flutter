import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/Splash.jpg",
              ),
              fit: BoxFit.fill)),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("Your Career in Your Hand Now",
              style: TextStyle(
                  color: Color.fromARGB(223, 0, 0, 0),
                  fontSize: 60,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 10,
        )
      ]),
    ));
  }
}
