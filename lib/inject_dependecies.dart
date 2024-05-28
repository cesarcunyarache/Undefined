import 'package:get_it/get_it.dart';
import 'package:undefined/data/repository/auth_repository_impl.dart';
import 'package:undefined/data/service/firebase_auth_service.dart';
import 'package:undefined/data/service/firebase_storage_service.dart';
import 'package:undefined/domain/repository/auth_repository.dart';
import 'package:undefined/domain/usecases/edit_user_usecases.dart';
import 'package:undefined/domain/usecases/get_current_user_usecase.dart';
import 'package:undefined/domain/usecases/send_recovery_email_usecase.dart';
import 'package:undefined/domain/usecases/signin_email_password.dart';
import 'package:undefined/domain/usecases/signin_facebook_usecase.dart';
import 'package:undefined/domain/usecases/signing_google_usecase.dart';
import 'package:undefined/domain/usecases/signout.dart';
import 'package:undefined/domain/usecases/signup_email_password.dart';
import 'package:undefined/presentation/blocs/auth/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> injectDependencies() async {
  // Dependencies

  // Auth:
  sl.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  sl.registerSingleton<FirebaseStorageService>(FirebaseStorageService());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl(), sl()));

  // use cases
  sl.registerSingleton<SignInWithEmailAndPasswordUseCase>(
      SignInWithEmailAndPasswordUseCase(sl()));
  sl.registerSingleton<SignUpWithEmailAndPasswordUseCase>(
      SignUpWithEmailAndPasswordUseCase(sl()));
  sl.registerSingleton<SignOutUseCase>(SignOutUseCase(sl()));
  sl.registerSingleton<GetCurrentUserUseCase>(GetCurrentUserUseCase(sl()));
  sl.registerSingleton<SendRecoveryEmailUseCase>(
      SendRecoveryEmailUseCase(sl()));
  sl.registerSingleton<SignInWithGoogleUseCase>(SignInWithGoogleUseCase(sl()));
  sl.registerSingleton<SignInWithFacebookUseCase>(
      SignInWithFacebookUseCase(sl()));
  sl.registerSingleton<ChangeDisplayNameUseCase>(
      ChangeDisplayNameUseCase(sl()));
  sl.registerSingleton<ChangeEmailUseCase>(ChangeEmailUseCase(sl()));
  sl.registerSingleton<ChangePasswordUseCase>(ChangePasswordUseCase(sl()));
  sl.registerSingleton<SendVerifyEmailUseCase>(SendVerifyEmailUseCase(sl()));
  sl.registerSingleton<ChangeProfilePhotoUseCase>(
      ChangeProfilePhotoUseCase(sl()));

  //bloc

  sl.registerFactory<AuthBloc>(
      () => AuthBloc(sl(), sl(), sl(), sl(), sl(), sl(), sl()));
}
