part of 'counter_cubit.dart';

@immutable
abstract class CounterCubitState {}

class CounterInitial extends CounterCubitState {}

class CounterCubitIncrement extends CounterCubitState {}

class CounterCubitDecrement extends CounterCubitState {}
