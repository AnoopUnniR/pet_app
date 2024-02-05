import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';
part 'splash_screen_bloc.freezed.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState.initial()) {
    //timer function for loading splash screen and moving to home page
    on<_SplashScreenStarted>((event, emit) async {
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(isDataLoaded: true));
    });
  }
 
}
