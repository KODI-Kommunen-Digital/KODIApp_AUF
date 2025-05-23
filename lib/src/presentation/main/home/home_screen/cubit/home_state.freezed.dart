// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStateInitialImplCopyWith<$Res> {
  factory _$$HomeStateInitialImplCopyWith(_$HomeStateInitialImpl value,
          $Res Function(_$HomeStateInitialImpl) then) =
      __$$HomeStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateInitialImpl>
    implements _$$HomeStateInitialImplCopyWith<$Res> {
  __$$HomeStateInitialImplCopyWithImpl(_$HomeStateInitialImpl _value,
      $Res Function(_$HomeStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateInitialImpl implements HomeStateInitial {
  const _$HomeStateInitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  const factory HomeStateInitial() = _$HomeStateInitialImpl;
}

/// @nodoc
abstract class _$$HomeStateLoadingImplCopyWith<$Res> {
  factory _$$HomeStateLoadingImplCopyWith(_$HomeStateLoadingImpl value,
          $Res Function(_$HomeStateLoadingImpl) then) =
      __$$HomeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadingImpl>
    implements _$$HomeStateLoadingImplCopyWith<$Res> {
  __$$HomeStateLoadingImplCopyWithImpl(_$HomeStateLoadingImpl _value,
      $Res Function(_$HomeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateLoadingImpl implements HomeStateLoading {
  const _$HomeStateLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading() = _$HomeStateLoadingImpl;
}

/// @nodoc
abstract class _$$HomeStatecategoryLoadingImplCopyWith<$Res> {
  factory _$$HomeStatecategoryLoadingImplCopyWith(
          _$HomeStatecategoryLoadingImpl value,
          $Res Function(_$HomeStatecategoryLoadingImpl) then) =
      __$$HomeStatecategoryLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel>? location});
}

/// @nodoc
class __$$HomeStatecategoryLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStatecategoryLoadingImpl>
    implements _$$HomeStatecategoryLoadingImplCopyWith<$Res> {
  __$$HomeStatecategoryLoadingImplCopyWithImpl(
      _$HomeStatecategoryLoadingImpl _value,
      $Res Function(_$HomeStatecategoryLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$HomeStatecategoryLoadingImpl(
      freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc

class _$HomeStatecategoryLoadingImpl implements HomeStatecategoryLoading {
  const _$HomeStatecategoryLoadingImpl(final List<CategoryModel>? location)
      : _location = location;

  final List<CategoryModel>? _location;
  @override
  List<CategoryModel>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.categoryLoading(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStatecategoryLoadingImpl &&
            const DeepCollectionEquality().equals(other._location, _location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_location));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStatecategoryLoadingImplCopyWith<_$HomeStatecategoryLoadingImpl>
      get copyWith => __$$HomeStatecategoryLoadingImplCopyWithImpl<
          _$HomeStatecategoryLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) {
    return categoryLoading(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return categoryLoading?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) {
    return categoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) {
    return categoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (categoryLoading != null) {
      return categoryLoading(this);
    }
    return orElse();
  }
}

abstract class HomeStatecategoryLoading implements HomeState {
  const factory HomeStatecategoryLoading(final List<CategoryModel>? location) =
      _$HomeStatecategoryLoadingImpl;

  List<CategoryModel>? get location;
  @JsonKey(ignore: true)
  _$$HomeStatecategoryLoadingImplCopyWith<_$HomeStatecategoryLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateLoadedImplCopyWith<$Res> {
  factory _$$HomeStateLoadedImplCopyWith(_$HomeStateLoadedImpl value,
          $Res Function(_$HomeStateLoadedImpl) then) =
      __$$HomeStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String banner,
      List<CategoryModel> category,
      List<CategoryModel> location,
      List<ProductModel> recent,
      bool isRefreshLoader});
}

/// @nodoc
class __$$HomeStateLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadedImpl>
    implements _$$HomeStateLoadedImplCopyWith<$Res> {
  __$$HomeStateLoadedImplCopyWithImpl(
      _$HomeStateLoadedImpl _value, $Res Function(_$HomeStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? category = null,
    Object? location = null,
    Object? recent = null,
    Object? isRefreshLoader = null,
  }) {
    return _then(_$HomeStateLoadedImpl(
      null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      null == recent
          ? _value._recent
          : recent // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      null == isRefreshLoader
          ? _value.isRefreshLoader
          : isRefreshLoader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateLoadedImpl implements HomeStateLoaded {
  const _$HomeStateLoadedImpl(
      this.banner,
      final List<CategoryModel> category,
      final List<CategoryModel> location,
      final List<ProductModel> recent,
      this.isRefreshLoader)
      : _category = category,
        _location = location,
        _recent = recent;

  @override
  final String banner;
  final List<CategoryModel> _category;
  @override
  List<CategoryModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<CategoryModel> _location;
  @override
  List<CategoryModel> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  final List<ProductModel> _recent;
  @override
  List<ProductModel> get recent {
    if (_recent is EqualUnmodifiableListView) return _recent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recent);
  }

  @override
  final bool isRefreshLoader;

  @override
  String toString() {
    return 'HomeState.loaded(banner: $banner, category: $category, location: $location, recent: $recent, isRefreshLoader: $isRefreshLoader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateLoadedImpl &&
            (identical(other.banner, banner) || other.banner == banner) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._recent, _recent) &&
            (identical(other.isRefreshLoader, isRefreshLoader) ||
                other.isRefreshLoader == isRefreshLoader));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      banner,
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_location),
      const DeepCollectionEquality().hash(_recent),
      isRefreshLoader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateLoadedImplCopyWith<_$HomeStateLoadedImpl> get copyWith =>
      __$$HomeStateLoadedImplCopyWithImpl<_$HomeStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(banner, category, location, recent, isRefreshLoader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(banner, category, location, recent, isRefreshLoader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(banner, category, location, recent, isRefreshLoader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  const factory HomeStateLoaded(
      final String banner,
      final List<CategoryModel> category,
      final List<CategoryModel> location,
      final List<ProductModel> recent,
      final bool isRefreshLoader) = _$HomeStateLoadedImpl;

  String get banner;
  List<CategoryModel> get category;
  List<CategoryModel> get location;
  List<ProductModel> get recent;
  bool get isRefreshLoader;
  @JsonKey(ignore: true)
  _$$HomeStateLoadedImplCopyWith<_$HomeStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateErrorImplCopyWith<$Res> {
  factory _$$HomeStateErrorImplCopyWith(_$HomeStateErrorImpl value,
          $Res Function(_$HomeStateErrorImpl) then) =
      __$$HomeStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$HomeStateErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateErrorImpl>
    implements _$$HomeStateErrorImplCopyWith<$Res> {
  __$$HomeStateErrorImplCopyWithImpl(
      _$HomeStateErrorImpl _value, $Res Function(_$HomeStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeStateErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateErrorImpl implements HomeStateError {
  const _$HomeStateErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      __$$HomeStateErrorImplCopyWithImpl<_$HomeStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CategoryModel>? location) categoryLoading,
    required TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)
        loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CategoryModel>? location)? categoryLoading,
    TResult? Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CategoryModel>? location)? categoryLoading,
    TResult Function(
            String banner,
            List<CategoryModel> category,
            List<CategoryModel> location,
            List<ProductModel> recent,
            bool isRefreshLoader)?
        loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStatecategoryLoading value) categoryLoading,
    required TResult Function(HomeStateLoaded value) loaded,
    required TResult Function(HomeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult? Function(HomeStateLoaded value)? loaded,
    TResult? Function(HomeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStatecategoryLoading value)? categoryLoading,
    TResult Function(HomeStateLoaded value)? loaded,
    TResult Function(HomeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  const factory HomeStateError(final String error) = _$HomeStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$HomeStateErrorImplCopyWith<_$HomeStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
