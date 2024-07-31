import 'package:flutter/material.dart';
import 'package:projek_uts_youtube/widgets/kumpulan_icon.dart';
import 'package:projek_uts_youtube/widgets/profil_akun.dart';
import 'package:projek_uts_youtube/widgets/shortbar.dart';
import 'package:projek_uts_youtube/youtubeshort_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilAkun(),
      
    );
  }
}
