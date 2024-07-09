part of 'auth_phone_cubit.dart';

class AuthPhoneState {}

class AuthInitial extends AuthPhoneState {}

class AuthLoading extends AuthPhoneState {}

class AuthFailure extends AuthPhoneState {
  final String errMessage;

  AuthFailure(this.errMessage);
}

class AuthSucces extends AuthPhoneState {
  final AuthPhoneEntities authPhoneEntities;

  AuthSucces(this.authPhoneEntities);
}
