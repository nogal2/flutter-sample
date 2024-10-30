import 'package:flutter_sample_core/flutter_sample_core.dart';

class CounterRepositoryLocal extends CounterRepository {
  factory CounterRepositoryLocal() => instance;

  CounterRepositoryLocal._instantiate();

  static final CounterRepositoryLocal instance =
      CounterRepositoryLocal._instantiate();

  CounterModel counterModel = const CounterModel();

  @override
  Future<CounterModel> fetch() async => counterModel;

  @override
  Future<CounterModel> increment(int number) async =>
      counterModel = counterModel.copyWith(number: number);
}
