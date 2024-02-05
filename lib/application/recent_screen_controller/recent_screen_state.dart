part of 'recent_screen_bloc.dart';

@freezed
class RecentScreenState with _$RecentScreenState {
  const factory RecentScreenState.recentScreenStarted(
      {required List<ImageModel> imageData,
      required bool isLoading}) = RecentScreenStarted;
  factory RecentScreenState.initial() =>
      const RecentScreenState.recentScreenStarted(
          imageData: [], isLoading: false);
}
