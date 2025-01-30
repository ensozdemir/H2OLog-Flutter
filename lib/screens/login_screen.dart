import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app2/core/constant.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController epostayonetici =TextEditingController();
  TextEditingController sifreyonetici =TextEditingController();

  girisyap() {
    if( epostayonetici.text.isEmpty || sifreyonetici.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Bilgilerinizi giriniz"),
          //action: SnackBarAction(label: "Kapat", onPressed: () {}),
         // margin: EdgeInsets.all(20),
         behavior: SnackBarBehavior.floating,
         backgroundColor: const Color.fromARGB(255, 184, 173, 82),
         showCloseIcon: true,
        ),
        );
    } else{
      if(sifreyonetici.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("sifre en az 8 haneli olabilir"),
          //action: SnackBarAction(label: "Kapat", onPressed: () {}),
         // margin: EdgeInsets.all(20),
         behavior: SnackBarBehavior.floating,
         backgroundColor: const Color.fromARGB(255, 184, 173, 82),
         showCloseIcon: true,
        ),
        );
      } else{
         context.go("/home");
      }
      
    }

  }

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
                controller: epostayonetici,
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
              TextFormField(
                obscureText: true,
                controller: sifreyonetici,
                decoration: InputDecoration(

                  hintText: "Sifre",
                 // helper: Text("sifrenizi girin"),
                  border: OutlineInputBorder(),
                ),
               
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: girisyap,
              child: const Text("Giris yap"),
              ),
               SizedBox(height:15),
              ElevatedButton(
                onPressed: () {
                context.pushReplacement("/register");
              },
               child: const Text("Kayit ol"),),
            ],
          ),
        ),
      ),
    );
  }
}