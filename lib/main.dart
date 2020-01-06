import 'package:calculater_app/blocs/counter_bloc.dart';
import 'package:calculater_app/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
   return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    home: ChangeNotifierProvider<CounterBloc>(
        create: (_) => CounterBloc(),
        child: CounterPage(),
    ));
}
      
  }


