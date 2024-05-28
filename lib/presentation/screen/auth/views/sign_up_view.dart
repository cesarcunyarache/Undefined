import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:undefined/config/animations/fade_in_slide.dart';
import 'package:undefined/config/colors/app_colors.dart';
import 'package:undefined/config/common/loading_overlay.dart';
import 'package:undefined/config/common/text_style_ext.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';
import 'package:undefined/presentation/blocs/auth/auth_event.dart';
import 'package:undefined/presentation/blocs/auth/auth_state.dart';
import 'package:undefined/presentation/widgets/text_form_field.dart';
import 'package:undefined/presentation/screen/auth/widgets/widgets.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  ValueNotifier<bool> termsCheck = ValueNotifier(false);

  final registerFormKey = GlobalKey<FormState>();
  String? correo = "";
  String? contrasena = "";

  final textEditingControllerEmail = TextEditingController(text: '');
  final textEditingControllerPassword = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;

    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
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
                  duration: .3,
                  child: Text(
                    "Regístrate 👤",
                    style: context.hm!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),
                FadeInSlide(
                  duration: .4,
                  child: Text(
                    "¡Descubre un mundo de sabores con Don Renato!",
                    style: context.tm,
                  ),
                ),
                const SizedBox(height: 25),
                /* FadeInSlide(
                  duration: .5,
                  child: Text(
                    "Email",
                    style: context.tm!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10), */
                FadeInSlide(
                  duration: .5,
                  child: TextFormFieldCustom(
                    label: "Correo",
                    textEditingController: textEditingControllerEmail,
                  ),
                ),
                const SizedBox(height: 20),
                /* FadeInSlide(
                  duration: .6,
                  child: Text(
                    "Password",
                    style: context.tm!.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10), */
                FadeInSlide(
                  duration: .6,
                  child: TextFormFieldCustom(
                    label: "Contraseña",
                    obscureText: true,
                    textEditingController: textEditingControllerPassword,
                  ),
                ),
                /* const SizedBox(height: 20),
                FadeInSlide(
                  duration: .7,
                  child: Row(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: termsCheck,
                        builder: (context, value, child) {
                          return CupertinoCheckbox(
                            inactiveColor: isDark ? Colors.white : Colors.black87,
                            value: value,
                            onChanged: (_) {
                              termsCheck.value = !termsCheck.value;
                            },
                          );
                        },
                      ),
                      RichTwoPartsText(
                        text1: "I agree to Smartome ",
                        text2: "Terms and Conditions.",
                        onTap: () {},
                      ),
                    ],
                  ),
                ), */
                const SizedBox(height: 20),
                FadeInSlide(
                  duration: .8,
                  child: RichTwoPartsText(
                    text1: "¿Ya tienes una cuenta? ",
                    text2: "Inicia Sesión",
                    onTap: () {
                      context.pushReplacementNamed('/signIn');
                    },
                  ),
                ),
                const SizedBox(height: 30),
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
                  duration: 1.0,
                  child: LoginButton(
                    icon: Brand(Brands.google, size: 25),
                    text: "Continuar with Google",
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
                  duration: 1.2,
                  child: LoginButton(
                    icon: Brand(Brands.facebook, size: 25),
                    text: "Continuar with Facebook",
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

                /* SizedBox(height: height * 0.02),
                FadeInSlide(
                  duration: 1.3,
                  child: LoginButton(
                    icon: Brand(Brands.twitter, size: 25),
                    text: "Continue with Twitter",
                    onPressed: () {},
                  ),
                ), */
              ],
            ),
          ),
          // persistentFooterAlignment: AlignmentDirectional.center,
          bottomNavigationBar: FadeInSlide(
            duration: 1,
            direction: FadeSlideDirection.btt,
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 40, left: 20, right: 20, top: 30),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: .2, color: Colors.white),
                ),
              ),
              child: FilledButton(
                onPressed: () async {
                  if (registerFormKey.currentState!.validate()) {
                    registerFormKey.currentState!.save();
                    BlocProvider.of<AuthBloc>(context).add(
                      SignUpEmailPasswordAuthEvent(
                        email: textEditingControllerEmail.text,
                        password: textEditingControllerPassword.text,
                        context: context,
                      ),
                    );
                  }
                  /*  LoadingScreen.instance()
                      .show(context: context, text: "Sign Up...");
                  await Future.delayed(const Duration(seconds: 1));
                  for (var i = 0; i <= 100; i++) {
                    LoadingScreen.instance().show(context: context, text: '$i...');
                    await Future.delayed(const Duration(milliseconds: 10));
                  }
                  LoadingScreen.instance()
                      .show(context: context, text: "Signed Up New User");
                  await Future.delayed(const Duration(seconds: 1));
                  LoadingScreen.instance().hide();
                  context.goNamed(''); */
                },
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  fixedSize: const Size(double.infinity, 50),
                ),
                child: const Text(
                  "Regístrate",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
