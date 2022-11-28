import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'gen_random_number_state.dart';

class GenRandomNumberCubit extends Cubit<GenRandomNumberState> {
  GenRandomNumberCubit() : super(GenRandomNumberState(currentNumber: 1));

  void generate() {
    int randomNumber = 1 + Random().nextInt(10);
    emit(GenRandomNumberState(currentNumber: randomNumber));
  }
}
