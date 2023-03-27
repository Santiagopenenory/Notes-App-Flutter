
import 'package:equatable/equatable.dart';
import 'package:mynotes/services/auth/auth_user.dart';

abstract class AuthState{
  final bool isLoading;
  final String? loadingText;
  AuthState({required this.isLoading,this.loadingText = 'Please wait a moment'});
}

class AuthStateUninitialize extends AuthState{
  AuthStateUninitialize({required bool isLoading}): super (isLoading: isLoading);
}


class AuthStateRegistering extends AuthState{
  final Exception? exception;
  AuthStateRegistering({required this.exception,required isLoading}) : super(isLoading: isLoading);
}



class AuthStateLoggedIn extends AuthState{
  final AuthUser user;
  AuthStateLoggedIn({required this.user,required bool isLoading}) : super (isLoading: isLoading);
}

class AuthStateNeedsVerification extends AuthState{
  AuthStateNeedsVerification({required bool isLoading}) : super (isLoading: isLoading);
}


class AuthStateLoggedOut extends AuthState with EquatableMixin{
  final Exception? exception;
  AuthStateLoggedOut({required this.exception, required bool isLoading , String? loadingText}) : super(isLoading: isLoading,loadingText:loadingText);
  
  @override
  List<Object?> get props => [exception,isLoading ];
}


class AuthStateForgotPassword extends AuthState{
  final Exception? exception;
  final bool hasSentEmail;
  AuthStateForgotPassword({required this.exception, required this.hasSentEmail, required bool isLoading}) : super(isLoading: isLoading);

}