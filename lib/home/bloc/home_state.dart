// home/bloc/home_state.dart
part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {}

class HomeFailure extends HomeState {
  final String error;

  HomeFailure({required this.error});
}
