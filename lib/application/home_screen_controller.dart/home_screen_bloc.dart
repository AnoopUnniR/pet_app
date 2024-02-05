import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets/domain/models/image_model.dart';
import 'package:pets/infrastructure/hive_storage.dart';
import 'package:pets/infrastructure/pet_image_repo.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    PetImageService petImageService = PetImageService();
    ImageLocalStorage imageLocalStorage = ImageLocalStorage();
    on<HomeScreenStarted>((event, emit) async {
      emit(state.copyWith(isLoading: true,isError: false));
      final result = await petImageService.imageFetcherFunction();
      //if there is no error in fetching the image
      if (result.$1.isEmpty) {
        ImageModel imageModel = urlToImageModel(result.$2);
        await imageLocalStorage.addImageToRecent(imageModel);
        emit(state.copyWith(isLoading: false, imageModel: imageModel));
      } else {
        emit(state.copyWith(isLoading: false, isError: true,errorMessage: result.$1));
      }
    });
  }
}

//function to convert the url into ImageModel
ImageModel urlToImageModel(String url) {
  int price = randomPrices[Random().nextInt(10)];
  String name = url.split("/")[4].toUpperCase();
  return ImageModel(name: name, imageUrl: url, price: price);
}

List randomPrices = List.generate(10, (index) => (index + 1) * 100);
