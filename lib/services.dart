import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void>signup({
  required String name ,
  required String email ,
  required String password ,
  required String confirmPassword,
  required BuildContext context
}) async{
  try{
await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("sign up successfull")));}
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }

}


Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Login successful")),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Login failed: ${e.toString()}")),
    );
  }
}

Future<void> sendLink({
  required String email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Link send successful")),
    );
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("link send failed: ${e.toString()}")),
    );
  }
}
