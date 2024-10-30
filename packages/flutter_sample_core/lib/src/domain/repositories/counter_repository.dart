import '../models/models.dart';

abstract class CounterRepository {
  Future<CounterModel> fetch();
  Future<CounterModel> increment(int number);
}
