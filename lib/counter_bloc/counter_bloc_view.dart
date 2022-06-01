import 'package:bloc_app/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter_cubit/counter_cubit_view.dart';

class CounterBlocView extends StatelessWidget {
  const CounterBlocView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Bloc View'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CounterCubitView(),
                ),
              ),
            ),
          ],
        ),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            CounterBloc bloc = CounterBloc.get(context);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                    bloc.add(IncrementEvent());
                  },
                ),
                Text(
                  bloc.counter.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    bloc.add(DecrementEvent());
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
