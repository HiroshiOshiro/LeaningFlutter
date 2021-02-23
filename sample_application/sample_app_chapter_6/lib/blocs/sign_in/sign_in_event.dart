import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable {}

class SignInWithGoogleOnPressed extends SignInEvent {}

class SignInAnonymouslyOnPressed extends SignInEvent {}
