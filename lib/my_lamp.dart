// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});

  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  String linkImagem = 'https://i.stack.imgur.com/b983w.jpg';
  String msg = "Desligado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 98, 37, 168),
      ),
      backgroundColor: Color.fromARGB(255, 41, 68, 107),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30)),
            Image.network(linkImagem),
            SizedBox(height:15 ,),
            Text(msg),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                mudaEstado();
                setState(() 
                {});
              },
              
              child: Text("change"),
            )
            
          ],
        ),
      ),
    );
  }

  void mudaEstado() {
    if (msg == "Desligado") {
      msg = "Ligado";
      linkImagem = 'https://i.stack.imgur.com/ybxlO.jpg';
    } else {
      msg = "Desligado";
      linkImagem = 'https://i.stack.imgur.com/b983w.jpg';
    }
  }
}
