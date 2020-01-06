import 'package:calculater_app/widgets/decrement.dart';
import 'package:calculater_app/widgets/increment.dart';
import 'package:calculater_app/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
      
    return Scaffold(
      body: new Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    counterBloc.counter.toString(),
                    style: TextStyle(fontSize: 62.0),
                  ),
                  IncrementButton(),
                  DecrementButton()
                ],
              ),
          ),
      ),
    );
  }

}