part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterIncrement extends CounterState {
  final int counter;

  CounterIncrement(this.counter);
}

class CounterDecrement extends CounterState {
  final int counter;

  CounterDecrement(this.counter);
}
