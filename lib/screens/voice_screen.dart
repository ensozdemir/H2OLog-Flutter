import 'package:flutter/material.dart';
import 'package:flutter_app2/core/constant.dart';
import 'package:flutter_app2/widgets/bottom_menu.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanrenkim,
      body: Center(
        child: Text("ses Ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}