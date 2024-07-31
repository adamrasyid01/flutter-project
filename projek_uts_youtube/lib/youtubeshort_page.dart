import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projek_uts_youtube/video/video_kedua.dart';
import 'package:projek_uts_youtube/video/video_ketiga.dart';
import 'package:projek_uts_youtube/video/video_pertama.dart';

class YoutubeShortPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          VideoPertama(),
          VideoKedua(),
          VideoKetiga()
        ]
      ),
    );
  }
}
