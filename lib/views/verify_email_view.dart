import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/services/auth/auth_service.dart';
import 'package:mynotes/services/auth/bloc/auth_bloc.dart';
import 'package:mynotes/services/auth/bloc/auth_events.dart';

import '../constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verify Email')),
      body: Column(
        children: [
          const Text("We've sent you an email verification. Please open it to verify your account."),
          const Text("If you haven't received a verification email yet, press the button below"),
          TextButton(
              onPressed: (){
                  context.read<AuthBloc>().add(AuthEventSentEmailVerification());
              },
              child: Text('Send email verification')
          ),
          TextButton(onPressed: ()async{
            context.read<AuthBloc>().add(AuthEventLogOut());
          }, child: const Text('Restart'))
        ],
      ),
    );
  }
}
