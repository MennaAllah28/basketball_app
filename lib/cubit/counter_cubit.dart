import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoint = 0;

  int teamBpoint = 0;

  /* void TeamAIncrement(int buttonNumber) {
    teamApoint += buttonNumber;
    emit(CounterAIncrementState());
  }

  void TeamBIncrement(int buttonNumber) {
    teamBpoint += buttonNumber;
    emit(CounterBIncrementState());
  }*/
  void TeamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoint += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoint += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
