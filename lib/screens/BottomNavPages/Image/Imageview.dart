import 'dart:developer';

import 'package:flutter/material.dart';

class ImageViewScreen extends StatefulWidget {
  const ImageViewScreen({super.key});

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  List<Widget> buttonList = const [
    Icon(Icons.download),
    Icon(Icons.print),
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
                    log("Print");
                    break;
                  case 2:
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
