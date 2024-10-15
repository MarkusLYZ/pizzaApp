import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(create: (_)=>AuthenticationBloc(
      myUserRepository: userRepository
    ), child: const MyAppView(),)
  }
}