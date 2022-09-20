import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainScreenState> {
  MainCubit({
    MainScreenState? initialState,
  }) : super(initialState ?? MainScreenState.initialState());

  void incrementCounter() => emit(
        state.copyWith(counter: state.counter + 1),
      );
}

class MainScreenState {
  int counter;

  MainScreenState({
    required this.counter,
  });

  static MainScreenState initialState() => MainScreenState(counter: 0);

  MainScreenState copyWith({
    int? counter,
  }) =>
      MainScreenState(
        counter: counter ?? this.counter,
      );
}
