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

  void onTapItem(int value) {
    emit(state.copyWith(index: value));
  }
}

class FlowActivateOfferCubit extends Cubit<FlowActivateOfferState> {
  FlowActivateOfferCubit(super.initialState);

  void onPhoneNumberChange(String value) {
    emit(state.copyWith(phoneNumber: value));
  }

  void onEmailChange(String value) {
    emit(state.copyWith(email: value));
  }
}

class AppCubit extends Cubit<AppState> {
  AppCubit(super.initialState);

  void setLoggedIn(bool logged) {
    emit(state.copyWith(loggedIn: logged));
  }
}
