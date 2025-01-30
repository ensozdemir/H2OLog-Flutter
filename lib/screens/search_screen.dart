import 'package:flutter/material.dart';
import 'package:flutter_app2/core/constant.dart';
import 'package:flutter_app2/widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: colors["surface"],
      body: Center(
        child: Text("Arama Ekranim"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}