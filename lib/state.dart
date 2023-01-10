import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) final bool loggedIn,
  }) = _AppState;
}

@freezed
class FlowLoginState with _$FlowLoginState {
  const factory FlowLoginState({
    final String? username,
    final String? password,
  }) = _FlowAState;
}

@freezed
class FlowDashboardState with _$FlowDashboardState {
  const factory FlowDashboardState({
    @Default(0) final int index,
  }) = _FlowDashboardState;
}

@freezed
class FlowActivateOfferState with _$FlowActivateOfferState {
  const factory FlowActivateOfferState({
    @Default('') final String email,
    @Default('') final String phoneNumber,
  }) = _FlowActivateOfferState;
}