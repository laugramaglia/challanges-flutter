import 'package:challange/comon/async_state.dart';
import 'package:challange/comon/async_state_notifier.dart';
import 'package:challange/features/data/models/test.dart';
import 'package:challange/features/domain/repository/test_repository.dart';

class TestProvider extends AsyncStateNotifier<List<Test>> {
  final TestRepository testRepository;

  TestProvider(super.context, {required this.testRepository});

  @override
  Future<AsyncState<List<Test>>> build() async {
    final (response, error) = await testRepository.getTests();
    if (error != null) return ErrorState(error);
    return DataState(response);
  }
}
