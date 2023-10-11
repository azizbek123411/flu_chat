import 'package:firebase_core/firebase_core.dart';
import 'package:flu_chat/src/service/auth_service/widget_tree.dart';
import 'package:flu_chat/ui/pages/home/home_page.dart';
import 'package:flu_chat/ui/pages/profil_account/profil_accont_page.dart';
import 'package:flu_chat/ui/pages/register_page/confirm_register_page.dart';
import 'package:flu_chat/ui/pages/register_page/sign_in_page.dart';
import 'package:flu_chat/ui/pages/splash_screen/splash_page.dart';
import 'package:flutter/material.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id:(context)=>const SplashPage(),
        SignIn.id:(context)=>const SignIn(),
        ConfirmPage.id:(context)=>const ConfirmPage(),
        ProfileAccount.id:(context)=>const ProfileAccount(),
        HomePage.id:(context)=>const HomePage(),
        WidgetTree.id:(context)=> const WidgetTree(),
      },
    );
  }
}


