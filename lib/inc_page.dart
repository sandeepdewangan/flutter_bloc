import 'package:bloc_examples/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncPage extends StatelessWidget {
  const IncPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the instance of counterCubit
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => counterCubit.increment(),
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
