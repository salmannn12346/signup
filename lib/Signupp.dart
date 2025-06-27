import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 700,right: 700),
          child: Center(
            child: Column(children: [
              Text("Sign up",
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800),),
              SizedBox(height: 20,),
              Text("Create an account,it's free",
                style: TextStyle(color: Colors.black,fontSize: 17),),
              SizedBox(height: 30,),
               Align(alignment:Alignment.topLeft,child: Text("username",style:TextStyle(fontWeight: FontWeight.bold),)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Email",style:TextStyle(fontWeight: FontWeight.bold),)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Password",style:TextStyle(fontWeight: FontWeight.bold),)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Confirm Password",style:TextStyle(fontWeight: FontWeight.bold),)),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 80,),
              SizedBox(width:600, height:50,child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Sign up",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white),)),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Text("Already have an account?",
                      style: TextStyle(color: Colors.black,fontSize: 17),),
                    Text("Login",
                      style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ],),
          ),
        ),
      );
  }
}
