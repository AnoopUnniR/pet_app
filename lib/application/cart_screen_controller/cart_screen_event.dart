part of 'cart_screen_bloc.dart';

@freezed
class CartScreenEvent with _$CartScreenEvent {
  const factory CartScreenEvent.startedEvent() = _StartedEvent;
  const factory CartScreenEvent.removeFromCartEvent({required ImageModel image}) = RemoveFromCartEvent;
  const factory CartScreenEvent.addToCartEvent({required ImageModel image}) = AddToCartEvent;
  
}