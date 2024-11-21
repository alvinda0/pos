// home/bloc/login/login_bloc.dart
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:pos_sibayar/home/bloc/login/login_event.dart';
import 'package:pos_sibayar/home/bloc/login/login_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>(_onLoginEvent); // Register the LoginEvent handler
    on<SignupEvent>(_onSignupEvent); // Register the SignupEvent handler
  }

  Future<void> _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final response = await http.post(
        Uri.parse('http://localhost:3000/api/v1/auth/login'),
        body: json.encode({
          'email': event.email,
          'password': event.password,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        emit(AuthSuccess(data['data']['token']));
      } else {
        emit(AuthFailure('Login failed'));
      }
    } catch (e) {
      emit(AuthFailure('Error: $e'));
    }
  }

  Future<void> _onSignupEvent(
      SignupEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final response = await http.post(
        Uri.parse('http://localhost:3000/api/v1/auth/signup'),
        body: json.encode({
          'name': event.name,
          'email': event.email,
          'password': event.password,
        }),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        emit(AuthSuccess(data['data']['token']));
      } else {
        emit(AuthFailure('Signup failed'));
      }
    } catch (e) {
      emit(AuthFailure('Error: $e'));
    }
  }
}
