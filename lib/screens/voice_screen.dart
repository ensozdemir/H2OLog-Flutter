import 'package:flutter/material.dart';
import 'package:flutter_app2/core/constant.dart';
import 'package:flutter_app2/widgets/bottom_menu.dart';
import 'package:go_router/go_router.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: ListView(
        children: [
          const Text("Sayfalar"),
          ElevatedButton(
            onPressed: () {
              context.go("/login");
          }, 
          child: const Text("giris yapınız //go")
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () {
              context.push("/login");
          }, 
          child: const Text("giris yapınız //push")
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}