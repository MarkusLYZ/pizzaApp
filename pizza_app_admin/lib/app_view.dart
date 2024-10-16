import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/blocs/authenticationBloc/authentication_bloc.dart';
import 'src/routes/routes.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pizza Admin',
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              surface: Colors.grey.shade100,
              onSurface: Colors.black,
              primary: Colors.blue,
              onPrimary: Colors.white)),
      routerConfig: router(context.read<AuthenticationBloc>()),
    );
  }
}
