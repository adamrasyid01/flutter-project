import 'package:flutter/material.dart';
import 'package:projek_uts_youtube/youtubeshort_page.dart';

class ShortBar extends StatelessWidget {
  const ShortBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          forceMaterialTransparency: true,
      title: const Text(
        "Shorts",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        )
      ],
      backgroundColor: Colors.transparent,
    ),
    body: YoutubeShortPage(),
    );    
  }
}
