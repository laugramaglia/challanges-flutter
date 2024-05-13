import 'package:challange/comon/app_exception.dart';
import 'package:challange/data_json.dart';
import 'package:challange/features/data/models/test.dart';

typedef FutureTestsOrError = Future<(List<Test>, AppException?)>;

class TestRepository {
  FutureTestsOrError getTests() async {
    try {
      final values = jsonData["value"] as List<dynamic>; // AVAIT THIS
      await Future.delayed(Duration(seconds: 2));
      final List<Test> finalResponse =
          List<Test>.from(values.map((e) => Test.fromJson(e)));
      // throw new Error();
      return (finalResponse, null);
    } catch (err) {
      return (
        <Test>[],
        AppException(message: err.toString(), code: 'server_error')
      );
    }
  }
}
