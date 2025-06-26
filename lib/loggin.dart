import 'package:flutter/material.dart';

class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(child: Column(children: [Image(image: NetworkImage("https://cdn.dribbble.com/userupload/23005716/file/original-36c675c448e2b5e5efb2a6ad090da9a3.png?resize=752x&vertical=center"),fit: BoxFit.fill,width: 600,),],))
      ),
    );
  }
}
