import 'package:flutter/material.dart';
import 'package:signup/Signupp.dart';
import 'package:signup/services.dart';


class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _LoginUpState();
}

class _LoginUpState extends State<Forgot> {
  final formkey=GlobalKey<FormState>();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,

        child: Padding(
          padding:  EdgeInsets.only(left: 600,right: 600),
          child: Center(
            child: Column(
              children: [SizedBox(height: 40,),
                Text("forgot password" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, ),),
                SizedBox(height: 40,),
                Text("Login to your account",style: TextStyle(fontSize: 17,wordSpacing: 3,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                Align( alignment:Alignment.topLeft,child: Text("Email",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                TextFormField( validator: (value){
                  if(value==null || value.isEmpty){
                    return "Email required";
                  }
                  if(!value.contains('@gmail.com')){
                    return "Email invalid";
                  }
                },
                  controller:emailController,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
                SizedBox(height: 15,),
                SizedBox(width: 500,
                  height: 60,
                  child: ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      sendLink(email: emailController.text, context: context);
                    };

                  }, child: Text(
                    "Send link",
                    style: TextStyle(color: Colors.white, fontSize: 18),),style:ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white) ,),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
