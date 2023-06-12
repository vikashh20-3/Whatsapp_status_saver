import 'package:demo/screens/BottomNavPages/video/videoview.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(5),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
        children: List.generate(
            15,
            (index) => GestureDetector(
              onTap: (){
                Navigator.push(
                  context,MaterialPageRoute(builder: (context)=>const VideoViewScreen())
                );
              },
              child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)),
                  ),
            )),
      ),
    ));
  }
}
