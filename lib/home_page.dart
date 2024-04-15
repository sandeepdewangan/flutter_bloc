import 'package:bloc_examples/counter_cubit.dart';
import 'package:bloc_examples/inc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the instance of counterCubit
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //  only the text widget will be rebuilt whenever state changes.
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, counter) {
                return Text(
                  '$counter',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const IncPage(),
                ),
              ),
              child: const Text("Go to Inc Page"),
            ),
          ],
        ),
      ),
    );
  }
}
