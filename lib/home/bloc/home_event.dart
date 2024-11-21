// home/bloc/home_event.dart
part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class LoginEvent extends HomeEvent {
  final String username;
  final String password;

  LoginEvent({required this.username, required this.password});
}
