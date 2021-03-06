import 'package:calculater_app/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class IncrementButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final CounterBloc arithmeticOperation = Provider.of<CounterBloc>(context);
    return new FlatButton.icon(
      icon: Icon(Icons.add),
      label: Text("Add"),
      onPressed: () => arithmeticOperation.increment(),
    );
  }
}