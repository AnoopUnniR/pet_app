part of 'cart_screen_bloc.dart';

@freezed
class CartScreenState with _$CartScreenState {
  const factory CartScreenState.cartScreenStarted(
      {required bool isLoading,
      required List<ImageModel> imageList,
      required String message}) = CartScreenStarted;
  factory CartScreenState.initial() => const CartScreenState.cartScreenStarted(
      isLoading: false, imageList: [], message: '');
}
