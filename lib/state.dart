import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

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
    @Default('Value not initialized') final String label,
  }) = _FlowDashboardState;
}
