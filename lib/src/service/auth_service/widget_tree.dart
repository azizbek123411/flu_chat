import 'package:flu_chat/src/service/auth_service/authentication.dart';
import 'package:flu_chat/ui/pages/register_page/confirm_register_page.dart';
import 'package:flu_chat/ui/pages/register_page/sign_in_page.dart';
import 'package:flutter/material.dart';


class WidgetTree extends StatefulWidget {
  static const String id='widget tree';
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: Auth().authStateChanges,
        builder:(context,snapshot){
          if(snapshot.hasData){
            return const ConfirmPage();
          } return const SignIn();
        });
  }
}