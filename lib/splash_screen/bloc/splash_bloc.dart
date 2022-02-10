import 'package:HealthCareApp/splash_screen/bloc/splash_event.dart';
import 'package:HealthCareApp/splash_screen/bloc/splash_state.dart';
import 'package:bloc/bloc.dart';

class  SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState(statusLoadConfig: SplashStatus.Start));

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async*{
    if (event is LoadConfig){
      print("Status Splash: ${state.statusLoadConfig}");
    }
  }
  
}