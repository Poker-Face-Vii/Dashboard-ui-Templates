import 'package:flutter/material.dart';
import 'package:mobx_provider/mobx_provider.dart';
import 'package:provider/provider.dart';
import 'Mobx/test_mobx.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(
        create: (_) => Test(),
      )
    ], child: MaterialApp(home: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobxStatefulProvider<Test>(initFunction: (store) {
      //do api calls here
      //store.fetchData();
    }, builder: (context, store) {
      return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('intresting'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  MobxWidgetProvider<Test>(builder: (context, store) {
                    //this widget will only be rendered when the value changes
                    return Text('counter value is ${store.counter}');
                  })
                ],
              ),
            ),
            floatingActionButton: ali()),
      );
    });
  }
}

Widget ali() {
  return MobxStatefulProvider<Test>(
    initFunction: (store) {
      //do api calls here
      //store.fetchData();
    },
    builder: (context, store) {
      return FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      );
    },
  );
}
