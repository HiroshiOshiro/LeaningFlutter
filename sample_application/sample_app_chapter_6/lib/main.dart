import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app_chapter_6/blocs/authentication/authentication_bloc.dart';
import 'package:sample_app_chapter_6/blocs/authentication/authentication_event.dart';
import 'package:sample_app_chapter_6/blocs/authentication/authentication_state.dart';
import 'package:sample_app_chapter_6/repositories/firebase_authentication_repository.dart';
import 'package:sample_app_chapter_6/screens/event_list_screen.dart';
import 'package:sample_app_chapter_6/screens/sign_in_screen.dart';
import 'package:sample_app_chapter_6/screens/splash_screen.dart';

void main() {
  final authenticationRepository = FirebaseAuthenticationRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      builder: (context) =>
      AuthenticationBloc(authRepository: authenticationRepository)
        ..dispatch(AppStarted()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    return MaterialApp(
      title: 'Awase',
      theme: ThemeData(
          primaryColor: Colors.indigo[900],
          accentColor: Colors.pink[800],
          brightness: Brightness.light),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          bloc: authenticationBloc,
          builder: (context, state) {
            if (state is AuthenticationInProgress) {
              return SplashScreen();
            }
            if (state is AuthenticationSuccess) {
              return EventListScreen();
            }
            if (state is AuthenticationInFailure) {
              return SignInScreen()
            }
            return Container();
          }),
    );
  }
}
