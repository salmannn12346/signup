import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController usernameController =TextEditingController();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController confirmPasswordController =TextEditingController();
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
               TextField(controller: usernameController,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Email",style:TextStyle(fontWeight: FontWeight.bold),)),
            TextField( controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Password",style:TextStyle(fontWeight: FontWeight.bold),)),
            TextField( controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Align(alignment:Alignment.topLeft,child: Text("Confirm Password",style:TextStyle(fontWeight: FontWeight.bold),)),
              TextField(controller: confirmPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),


                ),
              ),
              SizedBox(height: 80,),
              SizedBox(width: 500,
                height: 60,
                child: ElevatedButton(onPressed: (){
                  signup(name:usernameController.text,email: emailController.text,password: passwordController.text,confirmPassword: confirmPasswordController.text);
                  Navigator.pop(context);
                  }, child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.white, fontSize: 18),),style:ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white) ,),
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: Row(
                  children: [
                    Text("Already have an account?",
                      style: TextStyle(color: Colors.black,fontSize: 17),),
                    TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginUp()));},
                      child: Text("Login",
                        style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
              ),
            ],),
          ),
        ),
      );
  }
}
