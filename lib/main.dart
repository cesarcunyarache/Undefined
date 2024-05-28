import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:undefined/config/routes/router.dart';
import 'package:undefined/domain/repository/auth_repository.dart';
import 'package:undefined/inject_dependecies.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:undefined/config/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  injectDependencies();
  final isLoggedIn = sl<AuthRepository>().isLoggedIn();
  runApp(
    App(
      initialRoute: isLoggedIn ? '/home' : '/getStarted',
    ),
  );
}

class App extends StatelessWidget {
  final String initialRoute;
  const App({
    super.key,
    required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    final router = AppRouter(initialRoute).router;

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
