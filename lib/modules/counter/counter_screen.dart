import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy/modules/counter/cubit/cubit.dart';
import 'package:flutter_udemy/modules/counter/cubit/states.dart';

//statelesswidget build 1 time only cannot be rebuild
// and change data in screen
//statefullwidget opposite of stateless widget

//stateless contain 1 class provide widget
//stateful contain 2 class
//1. class provide widget
//2. class provide state from this widget

class CounterScreen extends StatelessWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   counterCubit cubit = BlocProvider.of(context);
    return BlocProvider(
      create: (BuildContext context) => counterCubit(),
      child: BlocConsumer<counterCubit, counterStates>(
        listener: (BuildContext context, counterStates state) {
          // state is de object mn state ale b3dha
          // if (state is counterMinusState) print('Minus State ${state.counter}');
          // if (state is counterPlusState) print('Plus State ${state.counter}');
          // if (state is counterResetState) print('Reset State ${state.counter}');
        },
        builder: (BuildContext context, counterStates state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Welcome Sir'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        counterCubit.get(context).minus();
                      },
                      child: Text(
                        'Minus',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '${counterCubit.get(context).counter}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        counterCubit.get(context).plus();
                      },
                      child: Text(
                        'Plus',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        counterCubit.get(context).reset();
                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
