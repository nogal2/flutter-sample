import 'package:flutter_sample_core_flutter/flutter_sample_core_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_view_model.freezed.dart';

@freezed
class HomePageViewModel with _$HomePageViewModel {
  const factory HomePageViewModel({
    @Default(CounterModel()) CounterModel counterModel,
  }) = _HomePageViewModel;

  const HomePageViewModel._();
}
