import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_udemy/layout/todo_package/todo_layout.dart';
import 'package:flutter_udemy/modules/home/home_screen.dart';
import 'package:flutter_udemy/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
// this 2 main widget
//Stateless
//Stateful

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // دى بانر كلمه ديباج الى ع يمين من فوق
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
