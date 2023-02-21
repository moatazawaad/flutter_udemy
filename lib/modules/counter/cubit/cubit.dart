import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy/modules/counter/cubit/states.dart';

class counterCubit extends Cubit<counterStates> {
  counterCubit() : super(counterInitialState());

  //to be more easily when use this cubit in many place
  static counterCubit get(context) => BlocProvider.of(context);

  int counter = 1;
  void minus() {
    counter--;
    emit(counterMinusState(counter));
  }

  void plus() {
    counter++;
    emit(counterPlusState(counter));
  }

  void reset() {
    counter = 0;
    emit(counterResetState(counter));
  }
}
