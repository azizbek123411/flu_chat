import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Image(
              image: AssetImage("assets/images/screenshot20231008225425.png"),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'Connect easly with your family and  friends over countries',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                maxLines: 5,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Terms & Privacy Policy',
                style: TextStyle(color: Color(0xff0F1828), fontSize: 14),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff002DE3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                child: const Text(
                  'Start Messaging',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'widget tree');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
