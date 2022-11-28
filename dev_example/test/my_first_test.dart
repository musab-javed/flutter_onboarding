import 'dart:math';

import 'package:dev_example/random_number/cubit/gen_random_number_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GenRandomNumberCubit genRandomNumberCubit;

  setUp(() {
    genRandomNumberCubit = GenRandomNumberCubit();
  });

  test('initial state is correct', () {
    const int initialNumber = 1;
    expect(genRandomNumberCubit.state.currentNumber, initialNumber);
  });
}
