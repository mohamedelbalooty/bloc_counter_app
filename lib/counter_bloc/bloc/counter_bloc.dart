import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementEvent>(increment);
    on<DecrementEvent>(decrement);
  }

  static CounterBloc get(BuildContext context) => BlocProvider.of(context);

  int counter = 0;

  increment(CounterEvent event, Emitter<CounterState> emit) {
    if (counter >= 0) {
      counter++;
    }
    emit(CounterIncrement(counter));
  }

  decrement(CounterEvent event, Emitter<CounterState> emit) {
    if (counter > 0) {
      counter--;
    }
    emit(CounterDecrement(counter));
  }

  @override
  void onTransition(Transition<CounterEvent, CounterState> transition) {
    if(transition.nextState is CounterIncrement){
      print('transition is increment');
    }else if(transition.nextState is CounterDecrement){
      print('transition is decrement');
    }
    super.onTransition(transition);
  }

  @override
  void onEvent(CounterEvent event) {
    print('event is $event');
    super.onEvent(event);
  }
}
