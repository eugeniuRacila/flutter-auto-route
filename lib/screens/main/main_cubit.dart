import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainScreenState> {
  MainCubit({
    MainScreenState? initialState,
  }) : super(initialState ?? MainScreenState.initialState());

  void setLoading(bool loading) => emit(state.copyWith(isLoading: loading));
}

class MainScreenState {
  bool isLoading;

  MainScreenState({
    required this.isLoading,
  });

  static MainScreenState initialState() => MainScreenState(isLoading: false);

  MainScreenState copyWith({isLoading = false}) =>
      MainScreenState(isLoading: isLoading);
}
