import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets/domain/models/image_model.dart';
import 'package:pets/infrastructure/hive_storage.dart';

part 'recent_screen_event.dart';
part 'recent_screen_state.dart';
part 'recent_screen_bloc.freezed.dart';

class RecentScreenBloc extends Bloc<RecentScreenEvent, RecentScreenState> {
  ImageLocalStorage imageLocalStorage = ImageLocalStorage();

  RecentScreenBloc() : super(RecentScreenState.initial()) {
    on<RecentScreenEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      List<ImageModel> imageList = await imageLocalStorage.getAllRecentImages();
      emit(state.copyWith(isLoading: false, imageData: imageList));
    });
  }
}
