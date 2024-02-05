import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets/domain/models/image_model.dart';
import 'package:pets/infrastructure/hive_storage.dart';

part 'cart_screen_event.dart';
part 'cart_screen_state.dart';
part 'cart_screen_bloc.freezed.dart';

class CartScreenBloc extends Bloc<CartScreenEvent, CartScreenState> {
  CartStorage cartStorage = CartStorage();
  CartScreenBloc() : super(CartScreenState.initial()) {
    on<_StartedEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true,message: ''));
      List<ImageModel> image = await cartStorage.getAllImagesInCart();
      emit(state.copyWith(isLoading: false, imageList: image));
    });

    on<AddToCartEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, message: ""));
      String message = await cartStorage.addToCart(event.image);
      emit(state.copyWith(isLoading: false, message: message));
    });

    on<RemoveFromCartEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, message: ""));
     List<ImageModel> image = await cartStorage.removeFromCart(event.image);
      emit(state.copyWith(
          isLoading: false, imageList: image, message: "removed Successfully"));
    });
  }
}
