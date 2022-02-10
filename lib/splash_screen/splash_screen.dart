import 'dart:ui';

import 'package:HealthCareApp/splash_screen/bloc/splash_event.dart';
import 'package:HealthCareApp/splash_screen/bloc/splash_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../size_config.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => SplashBloc(),
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
  void initState() {
    super.initState();
     BlocProvider.of<SplashBloc>(context).add(LoadConfig());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Có sự thay đổi !!");
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState> (
      listener: (context, state) async {
        print("Status Splashsssss: ${state.statusLoadConfig}");
      },
      child: Scaffold(
        body: Center(
          child: Container(
            child: Image.asset("assets/images/LogoApp.png", width: 200,),
          )
        )
      ),
    );
  }

}