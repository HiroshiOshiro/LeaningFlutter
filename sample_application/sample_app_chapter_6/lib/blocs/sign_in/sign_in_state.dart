import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable {}

class SignInEmpty extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {}

class SignInFailure extends SignInState {}
