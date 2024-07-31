import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const ScanQr());
}

//26 AppBar Custom Height

// class AppbarCustomHeight extends StatelessWidget {
//   const AppbarCustomHeight({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(200),
//           child: AppBar(
//               backgroundColor: Colors.amber,
//               flexibleSpace: Positioned(
//                 bottom: 60,
//                 right: 0,
//                 child: Container(
//                   margin: const EdgeInsets.all(20),
//                   child: const Text(
//                     "Appbar with Custom Height",style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w700),),
//                 )),
//           ),
//         ),
//       ),
//     );
//   }
// }

//27 & 28 TabBar dan Mengubah Tampilan TabBar
// class TabBarCustom extends StatelessWidget {
//   const TabBarCustom({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TabBar myTabBar = TabBar(
//       indicator: BoxDecoration(
//           color: Colors.red,
//           border: Border(bottom: BorderSide(color: Colors.purple,width: 5))),
//       tabs: [
//         Tab(
//           icon: Icon(Icons.comment),
//           text: "Comments",
//         ),
//         Tab(
//           icon: Icon(Icons.newspaper),
//           text: "News",
//         )
//       ],
//     );
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Contoh Tab Bar"),
//             bottom: PreferredSize(
//               preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
//               child: Container(
//                 child: myTabBar,
//                 color: Colors.amber,
//               ),
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               Center(
//                 child: Text("Tab 1"),
//               ),
//               Center(
//                 child: Text("Tab 2"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//29 Menampilkan QR Code
// class QrCodeFlutter extends StatelessWidget {
//   const QrCodeFlutter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Center(child: QrImageView(
//         version: 6,
//         backgroundColor: Colors.grey,
//         errorCorrectionLevel: QrErrorCorrectLevel.M,
//         padding: EdgeInsets.all(30),
//         size: 300,
//         data: "https://intip.in/yEzb",
//       )),
//     ));
//   }
// }

//30 Button Belah ketupat warna warni

// class BelahKetupat extends StatelessWidget {
//   const BelahKetupat({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Colorful buttons"),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
//               ColorfulButton(Colors.amber, Colors.red, Icons.comment),
//               ColorfulButton(Colors.green, Colors.purple, Icons.computer),
//               ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ColorfulButton extends StatefulWidget {
//   Color mainColor, secondColor;
//   IconData iconData;

//   @override
//   _ColorfulButtonState createState() =>
//       _ColorfulButtonState(mainColor, secondColor, this.iconData);

//   ColorfulButton(this.mainColor, this.secondColor,this.iconData);
// }

// class _ColorfulButtonState extends State<ColorfulButton> {
//   bool isPressed = false;
//   Color mainColor, secondColor;
//   IconData iconData;

//   _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

//   @override
//   Widget build(BuildContext context) {
//     return Transform.rotate(
//       angle: pi / 4,
//       child: GestureDetector(
//         onTapDown: (details) {
//           setState(() {
//             isPressed = !isPressed;
//           });
//         },
//         onTapUp: (details) {
//           setState(() {
//             isPressed = !isPressed;
//           });
//         },
//         onTapCancel: () {
//           setState(() {
//             isPressed = !isPressed;
//           });
//         },
//         child: Material(
//           borderRadius: BorderRadius.circular(15),
//           elevation: (isPressed) ? 5 : 10,
//           shadowColor: (isPressed) ? secondColor : mainColor,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Stack(
//               children: [
//                 SizedBox(
//                   width: 50,
//                   height: 50,
//                   child: Material(
//                     borderRadius: BorderRadius.circular(15),
//                     color: (isPressed) ? secondColor : mainColor,
//                     child: Transform.rotate(
//                       angle: -pi / 4,
//                       child: Icon(
//                         iconData,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(30, 30),
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.white.withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(-30, 30),
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.white.withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(-30, -30),
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.white.withOpacity(0.5),
//                     ),
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: Offset(30, -30),
//                   child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Material(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.white.withOpacity(0.5),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//31 Gradient Opacity / Transparansi Bergradasi

// class GradientGradasi extends StatelessWidget {
//   const GradientGradasi({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Gradient Opacity"),
//         ),
//         body: Center(
//           child: ShaderMask(
//             shaderCallback: (rectangle){
//               return const LinearGradient(
//                 colors: [
//                   Colors.black, Colors.transparent,

//                 ],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter
//               ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
//             },
//             blendMode: BlendMode.dstIn,
//             child: Image(
//               image: NetworkImage("https://picsum.photos/300/300")
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//32 Memainkan Musik (Pakai audioplayers)

// class Musik extends StatefulWidget {
//   const Musik({super.key});

//   @override
//   State<Musik> createState() => _MusikState();
// }

// class _MusikState extends State<Musik> {
//   late AudioPlayer audioPlayer;
//   String durasi = "00:00:00";

//   _MusikState() {
//     audioPlayer = AudioPlayer();
//     audioPlayer.onDurationChanged.listen((duration) {
//       setState(() {
//         durasi = duration.toString();
//       });
//     });
//     audioPlayer.setReleaseMode(ReleaseMode.loop);
//   }

//   void playSound(String url) async {
//     await audioPlayer.seek(Duration(seconds: 30));
//     await audioPlayer.play(UrlSource(url));
//   }

//   void pauseSound() async {
//     await audioPlayer.pause();
//   }

//   void stopSound() async {
//     await audioPlayer.stop();
//   }

//   void resumeSound() async {
//     await audioPlayer.resume();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Playing Music"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   playSound(
//                       "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3");
//                 },
//                 child: Text("Plknoy"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   pauseSound();
//                 },
//                 child: Text("Pause"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   stopSound();
//                 },
//                 child: Text("Stop"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   resumeSound();
//                 },
//                 child: Text("Resume"),
//               ),
//               Text(
//                 durasi,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//33 Scan QR CODE

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  String text = 'Hasil QR Scan';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QR Scan"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await scanner.scan();
                    setState(() {
                      
                    });
                  },
                  child: Text("Scan"))
            ],
          ),
        ),
      ),
    );
  }
}


//34 Font Features