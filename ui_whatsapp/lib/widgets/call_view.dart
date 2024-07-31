import 'package:flutter/material.dart';
import 'package:ui_whatsapp/models/call.dart';
import 'package:ui_whatsapp/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final call = chatList[index];
          return ListTile(
            leading: Image.network(call.image),
            title: Text(
              call.name,
              style: customTextStyle,
            ),
            subtitle: Text(
              call.callDate,
              style: const TextStyle(color: Colors.black45, fontSize: 16),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Icon(Icons.call),
            ),
          );
        });
  }
}
