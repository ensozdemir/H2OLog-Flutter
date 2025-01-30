import 'package:flutter/material.dart';
//import 'package:flutter_app2/screens/voice_screen.dart';
import 'package:go_router/go_router.dart';

class RegisterCreen extends StatefulWidget {
  const RegisterCreen({super.key});

  @override
  State<RegisterCreen> createState() => _RegisterCreenState();
}

class _RegisterCreenState extends State<RegisterCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 230,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Ad soyad",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: "E-posta",
                  border : OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Sifre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Sifre tekrar",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height:15),
              ElevatedButton(
                onPressed: () {
                context.go("/home");
              },
               child: const Text("Kayit ol"),
               ),
               SizedBox(height:15),
              ElevatedButton(
                onPressed: () {
                context.push("/login");
              },
               child: const Text("Giris yap"),
               ),
            ],
          ),
        ),
      ),
    );
  }
}