
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/cubit_counters/cubit_counter.dart';
import '../controller/cubit_counters/state_counter.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterCubit cubit =CounterCubit.get(context);

    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            BlocConsumer<CounterCubit,CounterState>(
              builder: (BuildContext context, CounterState) =>
                    // Text("${BlocProvider.of<CounterCubit>(context).counter}"),
                    // Text("${CounterCubit.get(context).counter}"),

          Text("${cubit.counter}"),
              listener: (BuildContext context, CounterState) {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cubit.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
