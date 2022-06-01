import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'app_bloc_observer.dart';
import 'counter_bloc/counter_bloc_view.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterBlocView(),
    );
  }
}
