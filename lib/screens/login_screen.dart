import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: SizedBox(
          width: 270,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const Center(
                //child: Text("Giris ekranım"),
              //),
              TextField(
                decoration: InputDecoration(
                  hintText: "E-posta",
                  //helper: Text("E-postanızı girin"),
                  border: OutlineInputBorder(),
                ),
               // keyboardType: TextInputType.number,
                //inputFormatters: [
                  //FilteringTextInputFormatter.digitsOnly,
                //],
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(

                  hintText: "Sifre",
                 // helper: Text("sifrenizi girin"),
                  border: OutlineInputBorder(),
                ),
               
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {
                context.go("/home");
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