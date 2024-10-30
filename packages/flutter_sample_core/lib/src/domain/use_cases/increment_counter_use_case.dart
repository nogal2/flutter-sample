import '../models/models.dart';
import '../repositories/repositories.dart';
import 'use_case.dart';

class IncrementCounterUseCase
    implements UseCase<Future<CounterModel>, CounterModel> {
  IncrementCounterUseCase({required this.counterRepository});
  final CounterRepository counterRepository;

  @override
  Future<CounterModel> call(CounterModel counterModel) async {
    final int increasedNumber = counterModel.number + 1;
    final CounterModel updateCounterModel =
        await counterRepository.increment(increasedNumber);
    return updateCounterModel;
  }
}
