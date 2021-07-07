import 'package:bloc/bloc.dart';

import 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0));

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      emit(CounterState(counterValue: state.counterValue! + 1));
    } else {
      emit(CounterState(counterValue: state.counterValue! - 1));
    }
  }

  void onIncrement() {
    add(IncrementEvent());
  }

  void onDecrement() {
    add(DecrementEvent());
  }
}
