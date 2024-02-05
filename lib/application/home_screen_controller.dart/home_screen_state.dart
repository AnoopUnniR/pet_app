part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.homePageLoading(
      {required ImageModel? imageModel, required bool isError,required bool isLoading,required String errorMessage}) = HomePageLoading;
  factory HomeScreenState.initial() =>
      const HomeScreenState.homePageLoading(imageModel:null, isError: false,isLoading: false,errorMessage: '');
}
