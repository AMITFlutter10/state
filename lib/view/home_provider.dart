import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/provider/provider_counter.dart';


class MyHomePage extends StatelessWidget {
  int c = 0;
// CounterProvider x = CounterProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterProvider>(
                builder:(context,provider,child){
                  return Text(
                      provider.counter.toString());
                }
            ),
            // ElevatedButton(onPressed:
            //   Provider.of<CounterProvider>
            //     (context,listen: false).decrementCounter,
            // child: Text("-"))
            ElevatedButton(onPressed:(){
              Provider.of<CounterProvider>
                (context,listen: false).decrementCounter();
            },child: Text("-"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Provider.of<CounterProvider>(context).incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
