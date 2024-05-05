import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blocapp/timerApp/bloc/timer_event.dart';
import 'package:blocapp/timerApp/bloc/timer_state.dart';
import 'package:blocapp/timerApp/ticker.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  late final Ticker _ticker;
  static const int _duration = 10;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker}) : super(TimerInitial(_duration)) {
    _ticker = ticker;

    on<TimerStarted>(_onStarted);
    on<TimerTicked>(_onTicked);
    on<TimerPaused>(_onPaused);
    on<TimerReset>(_onReset);
    on<TimerResumed>(_onResumed);
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(event.duration)
        .listen((duration) => add(TimerTicked(duration: duration)));
  }

  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    emit(event.duration > 0
        ? TimerRunInProgress(event.duration)
        : TimerRunComplete());
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration));
    }
  }

  FutureOr<void> _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(TimerInitial(_duration));
  }
}
