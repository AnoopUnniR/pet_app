part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState.splashScreenLoading(
      {required bool isDataLoaded}) = SplashScreenLoading;
  factory SplashScreenState.initial() =>
      const SplashScreenState.splashScreenLoading(isDataLoaded: false);
}
