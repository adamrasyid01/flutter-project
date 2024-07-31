import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumb_up, size: 32,),
                Text("300k"),
                SizedBox(height: 48), // Spasi antara ikon
                Icon(Icons.thumb_down, size: 32,),
                Text("Dislike"),
                SizedBox(height: 48), // Spasi antara ikon
                Icon(Icons.chat, size: 32,),
                Text("330"),
                SizedBox(height: 48), // Spasi antara ikon
                Icon(Icons.share, size: 32),
                Text("Share"),
                SizedBox(height: 48), // Spasi antara ikon
                Icon(Icons.book, size: 32,),
                Text("Matkul"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
