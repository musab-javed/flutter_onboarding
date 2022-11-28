import 'package:dev_example/random_number/cubit/gen_random_number_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomNumberPage extends StatelessWidget {
  const RandomNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random number generator!')),
      body: Center(
        child: BlocBuilder<GenRandomNumberCubit, GenRandomNumberState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${state.currentNumber}',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(height: 36.0),
                ElevatedButton(
                    onPressed: () =>
                        context.read<GenRandomNumberCubit>().generate(),
                    child: const Text('Regenerate'))
              ],
            );
          },
        ),
      ),
    );
  }
}
