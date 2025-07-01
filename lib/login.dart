import 'package:flutter/material.dart';

class LoginUp extends StatefulWidget {
  const LoginUp({super.key});

  @override
  State<LoginUp> createState() => _LoginUpState();
}

class _LoginUpState extends State<LoginUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left: 600,right: 600),
        child: Center(
          child: Column(
            children: [SizedBox(height: 40,),
              Text("Login" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, ),),
              SizedBox(height: 40,),
              Text("Login to your account",style: TextStyle(fontSize: 17,wordSpacing: 3,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Align( alignment:Alignment.topLeft,child: Text("Email",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
              TextField( decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
              Align( alignment:Alignment.topLeft,child: Text("Password",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
              TextField( decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
              SizedBox(height: 40,),
              SizedBox(width:2000,height:80,child: ElevatedButton(onPressed:(){
                Navigator.pop(context);
              }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,elevation: 8),)),
              SizedBox(height: 30,),
              Container(child: Row(children: [Text("Don't have an account?",style: TextStyle(fontSize: 17,),),Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],mainAxisAlignment: MainAxisAlignment.center,),),
              Image(height:400,fit:BoxFit.fill,image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/005/879/539/small/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"))
            ],
          ),
        ),
      ),
    );
  }
}
