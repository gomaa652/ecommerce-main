import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_code_entities.dart';
import 'package:yalla_client/features/auth/domain/usecases/auth_code_use_case.dart';

part 'auth_code_state.dart';

class AuthCodeCubit extends Cubit<AuthCodeState> {
  AuthCodeCubit(this.featuredCodeNumperUseCase) : super(AuthInitial());
  final FetchFeaturedCodeNumperUseCase featuredCodeNumperUseCase;
  TextEditingController textEditingController = TextEditingController();
  Future<void> fetchFutrueCode() async {
    emit(AuthLoading());
    var result = await featuredCodeNumperUseCase.call(params: textEditingController.text.trim());
    result.fold((l) {
      emit(AuthFailure(l.maseege));
    }, (r) {
      emit(AuthSucces(r));
    });
  }
}
