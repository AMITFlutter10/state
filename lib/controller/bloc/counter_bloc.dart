import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<IncrementEvent>(_increment);
    //on<DecrementEvent>(_decrement);

  }
    _increment(CounterEvent event, Emitter<CounterState>emit )=> emit(CounterState(counter:state.counter + 1 ));
   // _decrement(event, emit)=> emit(CounterState(counter:state.counter - 1 ));

    // Stream<CounterState>mapEventToState(CounterEvent event)async* {
    //   print(event.toString());
    //   if(event is IncrementEvent) {
    //     yield CounterState(counter: state.counter + 1);
    //   }
    //   else if (event is DecrementEvent){
    //     yield CounterState(counter: state.counter -1);
    //   }
    //   else{
    //     print("Close");
    //   }
    // }
    }
//
//
//     //
//
// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterState(Counter: 0)) {
//     on<IncrementEvent>(increment);
//     on<DecrementEvent>(decrement);
//   }
//
//   increment(CounterEvent event, Emitter <CounterState>emit) =>
//       emit(CounterState(Counter: state.Counter + 1));
//
//   decrement(event, emit) => emit(CounterState(Counter: state.Counter - 1));
//
// }
//
//





