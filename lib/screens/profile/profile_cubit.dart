import 'package:bristoli/core/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileCubitState> {
  final _dummyService = ServiceLocator.instance.dummyService;

  ProfileCubit({
    ProfileCubitState? initialState,
  }) : super(initialState ?? ProfileCubitState.initialState());

  Future<void> fetchUsername() async {
    final username = await _dummyService.getDummyString();

    emit(state.copyWith(userName: username));
  }
}

class ProfileCubitState {
  String userName;

  ProfileCubitState({
    required this.userName,
  });

  static ProfileCubitState initialState() => ProfileCubitState(userName: '');

  ProfileCubitState copyWith({
    String? userName,
  }) =>
      ProfileCubitState(
        userName: userName ?? this.userName,
      );
}
