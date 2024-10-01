import 'package:flutter/material.dart';
import 'package:gemini_ai/drawer.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        padEnds: true,
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        children: [
          GeminiDrawer(),
          Container(
            color: Colors.blue,
            height: context.height,
            width: context.width,
          )
        ],
      ),
    );
  }
}
