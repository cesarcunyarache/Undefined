// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:undefined/config/animations/fade_in_slide.dart';
import 'package:undefined/config/colors/app_colors.dart';
import 'package:undefined/config/common/loading_overlay.dart';
import 'package:undefined/config/common/text_style_ext.dart';
import 'package:undefined/domain/usecases/signin_facebook_usecase.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';
import 'package:undefined/presentation/blocs/auth/auth_event.dart';
import 'package:undefined/presentation/blocs/auth/auth_state.dart';
import 'package:undefined/presentation/widgets/text_form_field.dart';
import 'package:undefined/presentation/screen/auth/widgets/widgets.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  ValueNotifier<bool> termsCheck = ValueNotifier(false);
  final registerFormKey = GlobalKey<FormState>();
  String? correo = "";
  String? contrasena = "";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;

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
          body: Form(
            key: registerFormKey,
            child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const SizedBox(height: 20),
                  FadeInSlide(
                    duration: .4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /*  const Icon(HeroIcons.key,
                            color: AppColors.primaryColor, size: 30),
                        const SizedBox(height: 15), */
                        Text(
                          "Iniciar Sesion 🔑",
                          style:
                              context.hm!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  /*  FadeInSlide(
                    duration: .6,
                    child: Text(
                      "Correo",
                      style: context.tm!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ), */

                  FadeInSlide(
                      duration: .6,
                      child: TextFormFieldCustom(
                        label: "Correo",
                        onSave: (String? value) {
                          correo = value;
                        },
                      )),
                  const SizedBox(height: 25),
                  /*  FadeInSlide(
                    duration: .7,
                    child: Text(
                      "Contraseña",
                      style: context.tm!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10) ,*/
                  FadeInSlide(
                      duration: .7,
                      child: TextFormFieldCustom(
                          obscureText: true,
                          label: "Contraseña",
                          onSave: (String? value) {
                            contrasena = value;
                          })),
                  const SizedBox(height: 20),
                  FadeInSlide(
                    duration: .8,
                    child: Row(
                      children: [
                        ValueListenableBuilder(
                          valueListenable: termsCheck,
                          builder: (context, value, child) {
                            return CupertinoCheckbox(
                              inactiveColor:
                                  isDark ? Colors.white : Colors.black87,
                              value: value,
                              onChanged: (_) {
                                termsCheck.value = !termsCheck.value;
                              },
                            );
                          },
                        ),
                        Text("Recuérdame", style: context.tm),
                        const Spacer(),
                        TextButton(
                            onPressed: () => context.push('/'),
                            child: const Text("¿Olvidaste tu contraseña?",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  FadeInSlide(
                    duration: .9,
                    child: Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          thickness: .3,
                        )),
                        Text(
                          "   o   ",
                          style: context.tm,
                        ),
                        const Expanded(
                            child: Divider(
                          thickness: .3,
                        )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  FadeInSlide(
                    duration: 1,
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
                  const SizedBox(height: 15),
                  FadeInSlide(
                    duration: 1.2,
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
                  const SizedBox(height: 15),
                  FadeInSlide(
                    duration: 1.1,
                    child: LoginButton(
                      icon: Icon(
                        Icons.person_off,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                      text: "Continuar Anónimo",
                      onPressed: () {
                        final goRouter = GoRouter.of(context);
                        goRouter.goNamed('/home');
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeInSlide(
                    duration: .8,
                    child: RichTwoPartsText(
                      text1: "¿Aún no tienes una cuenta? ",
                      text2: "Regístrate",
                      onTap: () {
                        context.pushReplacementNamed('/signUp');
                      },
                    ),
                  ),
                ]),
          ),
          bottomNavigationBar: FadeInSlide(
            duration: 1,
            direction: FadeSlideDirection.btt,
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 40, left: 20, right: 20, top: 30),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: .2, color: Colors.grey),
                ),
              ),
              child: FilledButton(
                onPressed: () async {
                  if (registerFormKey.currentState!.validate()) {
                    registerFormKey.currentState!.save();
                    BlocProvider.of<AuthBloc>(context).add(
                      SignInEmailPasswordAuthEvent(
                        email: correo!,
                        password: contrasena!,
                        context: context,
                      ),
                    );
                  }
                  /* final goRouter = GoRouter.of(context);
                  LoadingScreen.instance()
                      .show(context: context, text: "Iniciando sesión...");
                  await Future.delayed(const Duration(seconds: 1));
                  for (var i = 0; i <= 100; i++) {
                    LoadingScreen.instance()
                        .show(context: context, text: '$i...');
                    await Future.delayed(const Duration(milliseconds: 10));
                  }
                  LoadingScreen.instance().show(
                      context: context,
                      text: "Sesion iniciada satisfactoriamente");
                  await Future.delayed(const Duration(seconds: 1));
                  LoadingScreen.instance().hide(); */
                  // goRouter.goNamed('/');
                },
                style: ButtonStyle(
                  backgroundColor:
                      const WidgetStatePropertyAll(AppColors.primaryColor),
                  minimumSize: const WidgetStatePropertyAll(
                    Size.fromHeight(50),
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        );
      }
    });
  }

  getEmail(String value) {}
}
