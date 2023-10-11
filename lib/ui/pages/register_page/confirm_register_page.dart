import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../src/service/auth_service/authentication.dart';

class ConfirmPage extends StatefulWidget {
  static const String id = 'confirm';

  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _SignInState();
}
class _SignInState extends State<ConfirmPage> {
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passwordController =TextEditingController();
  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
        route: Navigator.pushNamed(context,'home').toString(),
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
                "Confirm your email and number",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(30),
                child: const Text(
                  'Please confirm your email and phone number',
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
                child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Email',
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
                child: const Center(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Phone number',
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
                  child:const  Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: (){
                    createUserWithEmailAndPassword();
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
