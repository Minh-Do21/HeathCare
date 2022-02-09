import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../size_config.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => null,
      child: SplashScreenForm(),
    );
  }
}

class SplashScreenForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => SplashScreenFormState();
}

class SplashScreenFormState extends State<SplashScreenForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset("assets/images/LogoApp.png", width: 200,),
        )
      )
    );
  }

}