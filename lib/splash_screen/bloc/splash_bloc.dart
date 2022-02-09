import 'package:HealthCareApp/splash_screen/bloc/splash_event.dart';
import 'package:HealthCareApp/splash_screen/bloc/splash_state.dart';
import 'package:bloc/bloc.dart';

class  SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(null);

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
  
}