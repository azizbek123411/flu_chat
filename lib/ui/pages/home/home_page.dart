import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.5,
            ),

            const Text(
              'Home Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_new,size: 50,))
          ],
        ),
      ),
    );
  }
}
