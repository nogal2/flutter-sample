import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

import 'home_page_presenter.dart';
import 'home_page_view_model.dart';

part 'home_page_view_mobile.g.dart';

class HomePageViewMobile extends StatelessWidget {
  const HomePageViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Sample'),
      ),
      body: const BuildBody(),
      floatingActionButton: const BuildFloatingActionButton(),
    );
  }
}

@cwidget
Widget buildBody(BuildContext context, WidgetRef ref) {
  final AsyncValue<HomePageViewModel> asyncValue =
      ref.watch(homePagePresenterProvider);
  return asyncValue.when(
    data: (HomePageViewModel viewModel) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${viewModel.counterModel.number}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    },
    loading: () => const SizedBox(),
    error: (Object error, StackTrace stack) => const SizedBox(),
  );
}

@cwidget
Widget buildFloatingActionButton(WidgetRef ref) {
  final HomePagePresenter presenter =
      ref.read(homePagePresenterProvider.notifier);
  final AsyncValue<HomePageViewModel> asyncValue =
      ref.watch(homePagePresenterProvider);
  return asyncValue.when(
    data: (HomePageViewModel viewModel) {
      return FloatingActionButton(
        onPressed: presenter.incrementCounter,
        tooltip: 'Increment ${viewModel.counterModel.number}',
        child: const Icon(Icons.add),
      );
    },
    loading: () => const SizedBox(),
    error: (Object error, StackTrace stack) => const SizedBox(),
  );
}
