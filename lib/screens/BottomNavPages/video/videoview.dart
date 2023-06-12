import 'dart:developer';

import 'package:flutter/material.dart';

class VideoViewScreen extends StatefulWidget {
  const VideoViewScreen({super.key});

  @override
  State<VideoViewScreen> createState() => _VideoViewScreenState();
}

class _VideoViewScreenState extends State<VideoViewScreen> {
  List<Widget> buttonList = const [
    Icon(Icons.download),
    Icon(Icons.share),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.blueGrey),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(buttonList.length, (index) {
            return FloatingActionButton(
              onPressed: () {
                switch(index){
                  case 0:
                    log("Download");
                    break;

                  case 1:
                    log("Share");
                    break;
                }
              },
              heroTag: "$index",
              child: buttonList[index],
            );
          })),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.download),
      // ),
    );
  }
}
