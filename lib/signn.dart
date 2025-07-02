import 'package:flutter/material.dart';
import 'package:signup/Signupp.dart';
import 'package:signup/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Image(
                image: NetworkImage(
                  "https://cdn.dribbble.com/userupload/23005716/file/original-36c675c448e2b5e5efb2a6ad090da9a3.png?resize=752x&vertical=center",
                ),
                fit: BoxFit.fill,
                width: 600,
              ),
              SizedBox(height: 100),
              Container(
                width: 500,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginUp()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(40)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 500,
                height: 60,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp()));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(40)),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
