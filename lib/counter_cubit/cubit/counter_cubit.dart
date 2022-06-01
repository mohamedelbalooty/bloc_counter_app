import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterInitial());

  static CounterCubit get(BuildContext context) => BlocProvider.of(context);

  int counter = 0;

  void increment() {
    counter++;
    emit(CounterCubitIncrement());
  }

  void decrement() {
    counter--;
    emit(CounterCubitDecrement());
  }
}
