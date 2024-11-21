// home/bloc/home_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is LoginEvent) {
      yield HomeLoading();
      // Simulate a network call
      await Future.delayed(Duration(seconds: 2));
      if (event.username == 'admin' && event.password == 'admin') {
        yield HomeSuccess();
      } else {
        yield HomeFailure(error: 'Invalid username or password');
      }
    }
  }
}
