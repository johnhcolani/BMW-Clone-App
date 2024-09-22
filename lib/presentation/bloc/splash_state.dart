part of 'splash_bloc.dart';


abstract class SplashState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SplashInitial extends SplashState {}

class SplashLoading extends SplashState{}

class SplashLoaded extends SplashState{}