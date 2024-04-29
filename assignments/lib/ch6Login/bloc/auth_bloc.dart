import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthIntial()) {
    on<AuthLoginRequested>((event, emit) {
      final email = event.email;
      final password = event.password;

      print(email);
    });
  }
}
