import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';
import 'package:undefined/presentation/blocs/auth/auth_event.dart';
import 'package:undefined/presentation/blocs/auth/auth_state.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (_, state) {
      if (state is LoadingAuthState) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: TextButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(SignOutAuthEvent(context: context));
                },
                child: const Text(
                  "Cerrar Sesion",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        );
      }
    });
  }
}
