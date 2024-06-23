import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _SignUpInitial;
  const factory SignUpState.loading() = SignUpLoading;
  const factory SignUpState.success(T data) = SignUpSuccess<T>;
  const factory SignUpState.error({required String message}) = SignUpError;
}
