import 'package:flutter/material.dart';
import 'package:signup/Signupp.dart';
import 'package:signup/services.dart';
import 'package:signup/forgotpassword.dart';


class LoginUp extends StatefulWidget {
  const LoginUp({super.key});

  @override
  State<LoginUp> createState() => _LoginUpState();
}

class _LoginUpState extends State<LoginUp> {
  bool visible=false;
  final formkey=GlobalKey<FormState>();
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: Padding(
          padding:  EdgeInsets.only(left: 600,right: 600),
          child: Center(
            child: Column(
              children: [SizedBox(height: 40,),
                Text("Login" ,style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold, ),),
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
                Align( alignment:Alignment.topLeft,child: Text("Password",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                TextFormField(
                  obscureText: !visible,

                  controller:passwordController,decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      visible=!visible;
                    });
                }, icon: visible?Icon(Icons.visibility):Icon(Icons.visibility_off),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),),
                SizedBox(height: 15,),
                Align(alignment:Alignment.topRight,child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot()));
                }, child: Text("Forgort password",style: TextStyle(fontSize: 17),))),
                SizedBox(height: 15,),
                SizedBox(width:2000,height:80,child: ElevatedButton(onPressed:(){
    if(formkey.currentState!.validate()){ login(email: emailController.text, password: passwordController.text, context: context);};
                }, child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white,),),style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,elevation: 8),)),
                SizedBox(height: 10,),
                Container(child: Row(children: [Text("Don't have an account?",style: TextStyle(fontSize: 17,),),TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp()));},
                  child: Text("Sign up",
                    style: TextStyle(color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold),),
                ),],mainAxisAlignment: MainAxisAlignment.center,),),
                Image(height:300,fit:BoxFit.fill,image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/005/879/539/small/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
