import 'package:flutter_sample_core_flutter/flutter_sample_core_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_page_view_model.dart';

part 'home_page_presenter.g.dart';

@riverpod
class HomePagePresenter extends _$HomePagePresenter {
  final CounterRepository counterRepository = CounterRepositoryLocal();
  late final IncrementCounterUseCase incrementCounterUseCase =
      IncrementCounterUseCase(counterRepository: counterRepository);

  @override
  Future<HomePageViewModel> build() async {
    final CounterModel counterModel = await counterRepository.fetch();
    return HomePageViewModel(counterModel: counterModel);
  }

  Future<void> incrementCounter() async {
    if (state.hasValue) {
      final HomePageViewModel viewModel = state.value!;
      state = await AsyncValue.guard(() async {
        final CounterModel updateCounterModel =
            await incrementCounterUseCase.call(viewModel.counterModel);

        return viewModel.copyWith(
          counterModel: updateCounterModel,
        );
      });
    }
  }
}
