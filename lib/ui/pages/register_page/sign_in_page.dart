import 'package:firebase_auth/firebase_auth.dart';
import 'package:flu_chat/src/service/auth_service/authentication.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
        route: Navigator.pushNamed(context,'confirm').toString(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              const Text(
                "Enter your email and number",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: const Text(
                  'Please enter your email and phone number',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Enter your email',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Enter your phone number',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff002DE3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    signInWithEmailAndPassword();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
