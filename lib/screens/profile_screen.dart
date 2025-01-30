import 'package:flutter/material.dart';
import 'package:flutter_app2/core/constant.dart';
import 'package:flutter_app2/widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text("Profil Ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}