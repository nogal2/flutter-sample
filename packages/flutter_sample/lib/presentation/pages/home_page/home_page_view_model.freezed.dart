// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageViewModel {
  CounterModel get counterModel => throw _privateConstructorUsedError;

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageViewModelCopyWith<HomePageViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageViewModelCopyWith<$Res> {
  factory $HomePageViewModelCopyWith(
          HomePageViewModel value, $Res Function(HomePageViewModel) then) =
      _$HomePageViewModelCopyWithImpl<$Res, HomePageViewModel>;
  @useResult
  $Res call({CounterModel counterModel});

  $CounterModelCopyWith<$Res> get counterModel;
}

/// @nodoc
class _$HomePageViewModelCopyWithImpl<$Res, $Val extends HomePageViewModel>
    implements $HomePageViewModelCopyWith<$Res> {
  _$HomePageViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterModel = null,
  }) {
    return _then(_value.copyWith(
      counterModel: null == counterModel
          ? _value.counterModel
          : counterModel // ignore: cast_nullable_to_non_nullable
              as CounterModel,
    ) as $Val);
  }

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CounterModelCopyWith<$Res> get counterModel {
    return $CounterModelCopyWith<$Res>(_value.counterModel, (value) {
      return _then(_value.copyWith(counterModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomePageViewModelImplCopyWith<$Res>
    implements $HomePageViewModelCopyWith<$Res> {
  factory _$$HomePageViewModelImplCopyWith(_$HomePageViewModelImpl value,
          $Res Function(_$HomePageViewModelImpl) then) =
      __$$HomePageViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CounterModel counterModel});

  @override
  $CounterModelCopyWith<$Res> get counterModel;
}

/// @nodoc
class __$$HomePageViewModelImplCopyWithImpl<$Res>
    extends _$HomePageViewModelCopyWithImpl<$Res, _$HomePageViewModelImpl>
    implements _$$HomePageViewModelImplCopyWith<$Res> {
  __$$HomePageViewModelImplCopyWithImpl(_$HomePageViewModelImpl _value,
      $Res Function(_$HomePageViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterModel = null,
  }) {
    return _then(_$HomePageViewModelImpl(
      counterModel: null == counterModel
          ? _value.counterModel
          : counterModel // ignore: cast_nullable_to_non_nullable
              as CounterModel,
    ));
  }
}

/// @nodoc

class _$HomePageViewModelImpl extends _HomePageViewModel {
  const _$HomePageViewModelImpl({this.counterModel = const CounterModel()})
      : super._();

  @override
  @JsonKey()
  final CounterModel counterModel;

  @override
  String toString() {
    return 'HomePageViewModel(counterModel: $counterModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageViewModelImpl &&
            (identical(other.counterModel, counterModel) ||
                other.counterModel == counterModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counterModel);

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageViewModelImplCopyWith<_$HomePageViewModelImpl> get copyWith =>
      __$$HomePageViewModelImplCopyWithImpl<_$HomePageViewModelImpl>(
          this, _$identity);
}

abstract class _HomePageViewModel extends HomePageViewModel {
  const factory _HomePageViewModel({final CounterModel counterModel}) =
      _$HomePageViewModelImpl;
  const _HomePageViewModel._() : super._();

  @override
  CounterModel get counterModel;

  /// Create a copy of HomePageViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageViewModelImplCopyWith<_$HomePageViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
