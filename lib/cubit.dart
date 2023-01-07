import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shell_go_router/state.dart';

class FlowLoginCubit extends Cubit<FlowLoginState> {
  FlowLoginCubit(super.initialState);

  void onUsernameChanged(String value) {
    emit(state.copyWith(username: value));
  }

  void onPasswordChanged(String value) {
    emit(state.copyWith(password: value));
  }
}

class FlowDashboardCubit extends Cubit<FlowDashboardState> {
  FlowDashboardCubit(super.initialState);

  void onTapItem(String value) {
    emit(state.copyWith(label: value));
  }
}

class AppCubit extends Cubit<AppState> {
  AppCubit(super.initialState);

  showLoader() => emit(state.copyWith(isLoading: true));

  hideLoader() => emit(state.copyWith(isLoading: false));
}