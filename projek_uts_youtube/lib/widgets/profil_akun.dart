import 'package:flutter/material.dart';

class ProfilAkun extends StatelessWidget {
  const ProfilAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset('assets/images/matkul_mobile.jpg',
                width: 50,
                height: 50,),
                Text("@Bapak Muarifin"),
                ElevatedButton(
                  onPressed: (){},
                  child: Text("Subscribe"),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("100k Subscribers",),
                Text("RP 100.000"),
              ],
            ),
            Text("Ketika satu pintu tertutup, pintu lain akan terbuka. Namun, terkadang kita terlalu lama terpaku pada pintu yang tertutup itu sehingga tidak melihat pintu yang terbuka.Alexander Graham Bell",
            textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
