import 'package:equatable/equatable.dart';

class SplashState extends Equatable{

  final SplashStatus statusLoadConfig;

  const SplashState({this.statusLoadConfig});

  SplashState copyWith({
    SplashStatus statusLoadConfig
  }) {
    return SplashState(
      statusLoadConfig: statusLoadConfig ?? this.statusLoadConfig
    );
  }

  @override
  List<Object> get props => [statusLoadConfig];

}

enum SplashStatus{Start, Finish}