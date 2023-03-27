abstract class AuthEvent{
  AuthEvent();
}


class AuthEventInitialize extends AuthEvent{
  AuthEventInitialize();
}

class AuthEventLogIn extends AuthEvent{
  final String email;
  final String password;

  AuthEventLogIn(this.email, this.password);
}

class AuthEventRegister extends AuthEvent{
  final String email;
  final String password;

  AuthEventRegister(this.email, this.password);
}

class AuthEventShouldRegister extends AuthEvent{
  AuthEventShouldRegister();
}

class AuthEventLogOut extends AuthEvent{
  AuthEventLogOut();
}



class AuthEventSentEmailVerification extends AuthEvent{
  AuthEventSentEmailVerification();
}

class AuthEventForgotPassword extends AuthEvent{
  final String? email;
  AuthEventForgotPassword({this.email});
}