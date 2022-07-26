import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyHomePage extends HookWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);

    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Text('${counter.value}',
                  style: Theme.of(context).textTheme.headline4)
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () => counter.value += 1,
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}
