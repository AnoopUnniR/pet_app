// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(ImageModel image) removeFromCartEvent,
    required TResult Function(ImageModel image) addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(ImageModel image)? removeFromCartEvent,
    TResult? Function(ImageModel image)? addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(ImageModel image)? removeFromCartEvent,
    TResult Function(ImageModel image)? addToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(RemoveFromCartEvent value) removeFromCartEvent,
    required TResult Function(AddToCartEvent value) addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult? Function(AddToCartEvent value)? addToCartEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult Function(AddToCartEvent value)? addToCartEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartScreenEventCopyWith<$Res> {
  factory $CartScreenEventCopyWith(
          CartScreenEvent value, $Res Function(CartScreenEvent) then) =
      _$CartScreenEventCopyWithImpl<$Res, CartScreenEvent>;
}

/// @nodoc
class _$CartScreenEventCopyWithImpl<$Res, $Val extends CartScreenEvent>
    implements $CartScreenEventCopyWith<$Res> {
  _$CartScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedEventImplCopyWith<$Res> {
  factory _$$StartedEventImplCopyWith(
          _$StartedEventImpl value, $Res Function(_$StartedEventImpl) then) =
      __$$StartedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedEventImplCopyWithImpl<$Res>
    extends _$CartScreenEventCopyWithImpl<$Res, _$StartedEventImpl>
    implements _$$StartedEventImplCopyWith<$Res> {
  __$$StartedEventImplCopyWithImpl(
      _$StartedEventImpl _value, $Res Function(_$StartedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedEventImpl implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString() {
    return 'CartScreenEvent.startedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(ImageModel image) removeFromCartEvent,
    required TResult Function(ImageModel image) addToCartEvent,
  }) {
    return startedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(ImageModel image)? removeFromCartEvent,
    TResult? Function(ImageModel image)? addToCartEvent,
  }) {
    return startedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(ImageModel image)? removeFromCartEvent,
    TResult Function(ImageModel image)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (startedEvent != null) {
      return startedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(RemoveFromCartEvent value) removeFromCartEvent,
    required TResult Function(AddToCartEvent value) addToCartEvent,
  }) {
    return startedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult? Function(AddToCartEvent value)? addToCartEvent,
  }) {
    return startedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult Function(AddToCartEvent value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (startedEvent != null) {
      return startedEvent(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements CartScreenEvent {
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc
abstract class _$$RemoveFromCartEventImplCopyWith<$Res> {
  factory _$$RemoveFromCartEventImplCopyWith(_$RemoveFromCartEventImpl value,
          $Res Function(_$RemoveFromCartEventImpl) then) =
      __$$RemoveFromCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageModel image});
}

/// @nodoc
class __$$RemoveFromCartEventImplCopyWithImpl<$Res>
    extends _$CartScreenEventCopyWithImpl<$Res, _$RemoveFromCartEventImpl>
    implements _$$RemoveFromCartEventImplCopyWith<$Res> {
  __$$RemoveFromCartEventImplCopyWithImpl(_$RemoveFromCartEventImpl _value,
      $Res Function(_$RemoveFromCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RemoveFromCartEventImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartEventImpl implements RemoveFromCartEvent {
  const _$RemoveFromCartEventImpl({required this.image});

  @override
  final ImageModel image;

  @override
  String toString() {
    return 'CartScreenEvent.removeFromCartEvent(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartEventImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartEventImplCopyWith<_$RemoveFromCartEventImpl> get copyWith =>
      __$$RemoveFromCartEventImplCopyWithImpl<_$RemoveFromCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(ImageModel image) removeFromCartEvent,
    required TResult Function(ImageModel image) addToCartEvent,
  }) {
    return removeFromCartEvent(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(ImageModel image)? removeFromCartEvent,
    TResult? Function(ImageModel image)? addToCartEvent,
  }) {
    return removeFromCartEvent?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(ImageModel image)? removeFromCartEvent,
    TResult Function(ImageModel image)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (removeFromCartEvent != null) {
      return removeFromCartEvent(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(RemoveFromCartEvent value) removeFromCartEvent,
    required TResult Function(AddToCartEvent value) addToCartEvent,
  }) {
    return removeFromCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult? Function(AddToCartEvent value)? addToCartEvent,
  }) {
    return removeFromCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult Function(AddToCartEvent value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (removeFromCartEvent != null) {
      return removeFromCartEvent(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCartEvent implements CartScreenEvent {
  const factory RemoveFromCartEvent({required final ImageModel image}) =
      _$RemoveFromCartEventImpl;

  ImageModel get image;
  @JsonKey(ignore: true)
  _$$RemoveFromCartEventImplCopyWith<_$RemoveFromCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartEventImplCopyWith<$Res> {
  factory _$$AddToCartEventImplCopyWith(_$AddToCartEventImpl value,
          $Res Function(_$AddToCartEventImpl) then) =
      __$$AddToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageModel image});
}

/// @nodoc
class __$$AddToCartEventImplCopyWithImpl<$Res>
    extends _$CartScreenEventCopyWithImpl<$Res, _$AddToCartEventImpl>
    implements _$$AddToCartEventImplCopyWith<$Res> {
  __$$AddToCartEventImplCopyWithImpl(
      _$AddToCartEventImpl _value, $Res Function(_$AddToCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$AddToCartEventImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc

class _$AddToCartEventImpl implements AddToCartEvent {
  const _$AddToCartEventImpl({required this.image});

  @override
  final ImageModel image;

  @override
  String toString() {
    return 'CartScreenEvent.addToCartEvent(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartEventImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      __$$AddToCartEventImplCopyWithImpl<_$AddToCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedEvent,
    required TResult Function(ImageModel image) removeFromCartEvent,
    required TResult Function(ImageModel image) addToCartEvent,
  }) {
    return addToCartEvent(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startedEvent,
    TResult? Function(ImageModel image)? removeFromCartEvent,
    TResult? Function(ImageModel image)? addToCartEvent,
  }) {
    return addToCartEvent?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedEvent,
    TResult Function(ImageModel image)? removeFromCartEvent,
    TResult Function(ImageModel image)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) startedEvent,
    required TResult Function(RemoveFromCartEvent value) removeFromCartEvent,
    required TResult Function(AddToCartEvent value) addToCartEvent,
  }) {
    return addToCartEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartedEvent value)? startedEvent,
    TResult? Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult? Function(AddToCartEvent value)? addToCartEvent,
  }) {
    return addToCartEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? startedEvent,
    TResult Function(RemoveFromCartEvent value)? removeFromCartEvent,
    TResult Function(AddToCartEvent value)? addToCartEvent,
    required TResult orElse(),
  }) {
    if (addToCartEvent != null) {
      return addToCartEvent(this);
    }
    return orElse();
  }
}

abstract class AddToCartEvent implements CartScreenEvent {
  const factory AddToCartEvent({required final ImageModel image}) =
      _$AddToCartEventImpl;

  ImageModel get image;
  @JsonKey(ignore: true)
  _$$AddToCartEventImplCopyWith<_$AddToCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ImageModel> get imageList => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<ImageModel> imageList, String message)
        cartScreenStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<ImageModel> imageList, String message)?
        cartScreenStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<ImageModel> imageList, String message)?
        cartScreenStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartScreenStarted value) cartScreenStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartScreenStarted value)? cartScreenStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartScreenStarted value)? cartScreenStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartScreenStateCopyWith<CartScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartScreenStateCopyWith<$Res> {
  factory $CartScreenStateCopyWith(
          CartScreenState value, $Res Function(CartScreenState) then) =
      _$CartScreenStateCopyWithImpl<$Res, CartScreenState>;
  @useResult
  $Res call({bool isLoading, List<ImageModel> imageList, String message});
}

/// @nodoc
class _$CartScreenStateCopyWithImpl<$Res, $Val extends CartScreenState>
    implements $CartScreenStateCopyWith<$Res> {
  _$CartScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? imageList = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartScreenStartedImplCopyWith<$Res>
    implements $CartScreenStateCopyWith<$Res> {
  factory _$$CartScreenStartedImplCopyWith(_$CartScreenStartedImpl value,
          $Res Function(_$CartScreenStartedImpl) then) =
      __$$CartScreenStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ImageModel> imageList, String message});
}

/// @nodoc
class __$$CartScreenStartedImplCopyWithImpl<$Res>
    extends _$CartScreenStateCopyWithImpl<$Res, _$CartScreenStartedImpl>
    implements _$$CartScreenStartedImplCopyWith<$Res> {
  __$$CartScreenStartedImplCopyWithImpl(_$CartScreenStartedImpl _value,
      $Res Function(_$CartScreenStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? imageList = null,
    Object? message = null,
  }) {
    return _then(_$CartScreenStartedImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imageList: null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartScreenStartedImpl implements CartScreenStarted {
  const _$CartScreenStartedImpl(
      {required this.isLoading,
      required final List<ImageModel> imageList,
      required this.message})
      : _imageList = imageList;

  @override
  final bool isLoading;
  final List<ImageModel> _imageList;
  @override
  List<ImageModel> get imageList {
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'CartScreenState.cartScreenStarted(isLoading: $isLoading, imageList: $imageList, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartScreenStartedImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_imageList), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartScreenStartedImplCopyWith<_$CartScreenStartedImpl> get copyWith =>
      __$$CartScreenStartedImplCopyWithImpl<_$CartScreenStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<ImageModel> imageList, String message)
        cartScreenStarted,
  }) {
    return cartScreenStarted(isLoading, imageList, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<ImageModel> imageList, String message)?
        cartScreenStarted,
  }) {
    return cartScreenStarted?.call(isLoading, imageList, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<ImageModel> imageList, String message)?
        cartScreenStarted,
    required TResult orElse(),
  }) {
    if (cartScreenStarted != null) {
      return cartScreenStarted(isLoading, imageList, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartScreenStarted value) cartScreenStarted,
  }) {
    return cartScreenStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartScreenStarted value)? cartScreenStarted,
  }) {
    return cartScreenStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartScreenStarted value)? cartScreenStarted,
    required TResult orElse(),
  }) {
    if (cartScreenStarted != null) {
      return cartScreenStarted(this);
    }
    return orElse();
  }
}

abstract class CartScreenStarted implements CartScreenState {
  const factory CartScreenStarted(
      {required final bool isLoading,
      required final List<ImageModel> imageList,
      required final String message}) = _$CartScreenStartedImpl;

  @override
  bool get isLoading;
  @override
  List<ImageModel> get imageList;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CartScreenStartedImplCopyWith<_$CartScreenStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
