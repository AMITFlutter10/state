part of 'counter_bloc.dart';
class CounterState extends Equatable {
  final int counter;
  const CounterState({required this.counter});

  @override
  List<Object?> get props => [counter];
}
class DecrementEvent extends CounterEvent{}

// class CounterInitial extends CounterState {
//   CounterInitial({required int counter}) : super(counter: counter);
//
//   @override
//   List<Object> get props => [counter];
// }
