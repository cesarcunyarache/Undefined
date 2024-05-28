import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:undefined/config/animations/fade_in_slide.dart';
import 'package:undefined/config/colors/app_colors.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';
import 'package:undefined/presentation/blocs/auth/auth_event.dart';
import 'package:undefined/presentation/blocs/auth/auth_state.dart';
import 'package:undefined/presentation/screen/auth/widgets/widgets.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    final height = size.height;

    return BlocBuilder<AuthBloc, AuthState>(builder: (_, state) {
      if (state is LoadingAuthState) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        return Scaffold(
          body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const FadeInSlide(
                  duration: .4,
                  child: Icon(
                    Icons.dashboard_rounded,
                    size: 60,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInSlide(
                  duration: .5,
                  child: Text(
                    "¡Bienvenido!",
                    style: theme.textTheme.headlineMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: height * 0.015),
                const FadeInSlide(
                  duration: .6,
                  child: Text(
                    "Continua con:",
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                FadeInSlide(
                  duration: .7,
                  child: LoginButton(
                    icon: Brand(Brands.google, size: 25),
                    text: "Continuar con Google",
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(
                        SignInWithGoogleAuthEvent(
                          context: context,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                FadeInSlide(
                  duration: .9,
                  child: LoginButton(
                    icon: Brand(Brands.facebook, size: 25),
                    text: "Continuar con Facebook",
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(
                        SignInWithFacebookAuthEvent(
                          context: context,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                FadeInSlide(
                  duration: .8,
                  child: LoginButton(
                    icon: Icon(
                      Icons.person_off,
                      color: isDark ? Colors.white : Colors.black,
                    ),
                    text: "Continuar Anónimo",
                    onPressed: () {
                      context.push('/home');
                    },
                  ),
                ),
                SizedBox(height: height * 0.02),
                /* FadeInSlide(
              duration: 1.0,
              child: LoginButton(
                icon: Brand(Brands.twitter, size: 25),
                text: "Continue with Twitter",
                onPressed: () {},
              ),
            ), */
                const Spacer(),
                FadeInSlide(
                  duration: 1.1,
                  child: FilledButton(
                    onPressed: () => context.push('/signUp'),
                    style: FilledButton.styleFrom(
                        fixedSize: const Size.fromHeight(50),
                        backgroundColor: AppColors.primaryColor),
                    child: const Text(
                      "Regístrate",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                FadeInSlide(
                  duration: 1.2,
                  child: FilledButton(
                    onPressed: () => context.push('/signIn'),
                    style: FilledButton.styleFrom(
                      side: const BorderSide(
                        color: Color.fromARGB(255, 89, 89, 89),
                        width: .1,
                      ),
                      fixedSize: const Size.fromHeight(50),
                      backgroundColor: isDark
                          ? AppColors.secundaryColor
                          : AppColors.secundaryColor,
                    ),
                    child: Text(
                      "Iniciar sesión",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: isDark ? Colors.white : AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                /* const FadeInSlide(
              duration: 1.0,
              direction: FadeSlideDirection.btt,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Privacy Policy"),
                  Text("   -   "),
                  Text("Terms of Service"),
                ],
              ),
            ), */
                SizedBox(height: height * 0.02),
              ],
            ),
          ),
        );
      }
    });
  }
}
