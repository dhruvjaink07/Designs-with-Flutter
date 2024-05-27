import 'package:design1/components/menu_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __HomeViewState();
}

class __HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MenuIcon(),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Center(
                    child: Text(
                  "D",
                  style: TextStyle(color: Colors.white),
                )),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(fit: StackFit.passthrough, children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.6,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 44, 8, 253),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5.5,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text.rich(TextSpan(
                        text: 'Welcome',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        children: [
                          TextSpan(
                              text: ' Sam',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold))
                        ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Explore and Discover",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabled: true,
                          hintText: 'Search course,topic,mentor',
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          focusColor: Colors.blueAccent,
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  )
                ],
              ),
            ),
          ])
        ],
      ),
    ));
  }
}
