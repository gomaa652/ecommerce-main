import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:yalla_client/features/auth/domain/entities/auth_phone_entities.dart';
import 'package:yalla_client/features/auth/domain/usecases/auth_phone_use_case.dart';

part 'auth_phone_state.dart';

class AuthPhoneCubit extends Cubit<AuthPhoneState> {
  AuthPhoneCubit(this.featuredPhoneNumperUseCase) : super(AuthInitial());
  final FetchFeaturedPhoneNumperUseCase featuredPhoneNumperUseCase;
  Future<void> fetchFuturePoneNumper(String phonee) async {
    emit(AuthLoading());
    var result = await featuredPhoneNumperUseCase.call(params: phonee);
    result.fold((l) {
      emit(AuthFailure(l.maseege));
    }, (r) {
      emit(AuthSucces(r));
    });
  }
}
