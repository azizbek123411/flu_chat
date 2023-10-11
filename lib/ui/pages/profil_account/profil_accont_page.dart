import 'package:flutter/material.dart';

class ProfileAccount extends StatefulWidget {
  static const String id = 'profile account';

  const ProfileAccount({super.key});

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
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
              GestureDetector(
                  onTap: () {
                    print("pressed");
                  },
                  child: const Image(
                    height: 100,
                    image: AssetImage('assets/images/profile.png'),
                  ),),
              const SizedBox(
                height: 30,
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
                        hintText: 'First Name (Required)',
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
                        hintText: 'Last Name (Optional)',
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
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,'home');
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
