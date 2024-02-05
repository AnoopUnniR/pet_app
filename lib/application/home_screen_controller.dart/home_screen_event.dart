part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.homeScreenStarted() = HomeScreenStarted;
  const factory HomeScreenEvent.onNextImageButtonClick() = OnNextImageButtonClick;
  const factory HomeScreenEvent.onAddToCart() = OnAddToCart;

  
}