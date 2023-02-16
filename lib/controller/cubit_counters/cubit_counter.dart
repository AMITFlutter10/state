import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state34/controller/cubit_counters/state_counter.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(InitialStateCounter());
   int counter=0;

  static CounterCubit get(context)=>BlocProvider.of(context);

  void incrementCounter(){
    counter++;
    emit(IncrementCounter());
  }

  void decrementCounter(){
    counter--;
    emit(DecrementCounter());
  }



}