import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';
import 'package:yalla_client/features/auth/domain/usecases/auth_phone_use_case.dart';

part 'auth_phone_state.dart';

class AuthPhoneCubit extends Cubit<AuthPhoneState> {
  AuthPhoneCubit(this.featuredPhoneNumperUseCase) : super(AuthInitial());
  final FetchFeaturedPhoneNumperUseCase featuredPhoneNumperUseCase;
  TextEditingController textEditingController = TextEditingController();
  Future<void> fetchFuturePoneNumper() async {
    emit(AuthLoading());
    var result = await featuredPhoneNumperUseCase.call(params: textEditingController.text.trim());
    result.fold((l) {
      emit(AuthFailure(l.maseege));
    }, (r) {
      emit(AuthSucces(r));
    });
  }
}
