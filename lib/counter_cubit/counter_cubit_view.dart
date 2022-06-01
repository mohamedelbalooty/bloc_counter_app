import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/counter_cubit.dart';

class CounterCubitView extends StatelessWidget {
  const CounterCubitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Cubit View'),
          centerTitle: true,
        ),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
          builder: (context, state) {
            CounterCubit cubit = CounterCubit.get(context);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    cubit.increment();
                  },
                ),
                Text(
                  cubit.counter.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    cubit.decrement();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
