import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_whatsapp/theme.dart';
import 'package:ui_whatsapp/widgets/CameraScreen.dart';
import 'package:ui_whatsapp/widgets/call_view.dart';
import 'package:ui_whatsapp/widgets/chat_view.dart';
import 'package:ui_whatsapp/widgets/status_view.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

class WhatsAppPage extends StatefulWidget {
  const WhatsAppPage({Key? key});

  @override
  State<WhatsAppPage> createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  final tabs = const [
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: "CHAT"),
    Tab(text: "STATUS"),
    Tab(text: "CALL")
  ];
  TabController? tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    _checkCameraPermission();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController?.index = 1;
    tabController?.addListener(() {
      setState(() {
        switch (tabController?.index) {
          case 0:
            fabIcon = Icons.camera;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_alt;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: whatsAppGreen,
          actions: const [
            Icon(Icons.search),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            controller: tabController,
            tabs: tabs,
            indicatorColor: Colors.white,
          )),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Icon(Icons.camera_alt)),
          Center(child: ChatView()),
          Center(child: StatusView()),
          Center(child: CallView()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (tabController?.index == 0) {
            _openCamera(context);
          }
        },
        child: Icon(fabIcon),
        backgroundColor: whatsAppLightGreen,
      ),
    );
  }

  void _openCamera(BuildContext context) async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraScreen(camera: firstCamera),
      ),
    );
  }

  void _checkCameraPermission() async {
    if (Platform.isAndroid) {
      PermissionStatus status = await Permission.camera.status;
      if (status.isDenied) {
        await Permission.camera.request();
      }
    }
  }
}
