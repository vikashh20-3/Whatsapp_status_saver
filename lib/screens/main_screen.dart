import 'package:demo/Provider/bottom_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BottomNavPages/Image/Image.dart';
import 'BottomNavPages/video/video.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = const [ImageScreen(), VideoScreen()];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, nav, child) {
      return Scaffold(
        body: screens[nav.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              nav.changeIndex(value);
            },
            currentIndex: nav.currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.image), label: "Photo"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_call), label: "Video")
            ]),
      );
    });
  }
}
