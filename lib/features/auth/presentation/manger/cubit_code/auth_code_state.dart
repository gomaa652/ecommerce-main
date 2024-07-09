part of 'auth_code_cubit.dart';

class AuthCodeState {}

class AuthInitial extends AuthCodeState {}

class AuthLoading extends AuthCodeState {}

class AuthFailure extends AuthCodeState {
  final String errMessage;

  AuthFailure(this.errMessage);
}

class AuthSucces extends AuthCodeState {
  final AuthCodeEntities authPhoneEntities;

  AuthSucces(this.authPhoneEntities);
}
