import 'package:challange/comon/async_state.dart';
import 'package:flutter/material.dart';

abstract class AsyncStateNotifier<T> with ChangeNotifier {
  final BuildContext context;

  AsyncStateNotifier(this.context) {
    build().then((value) => setState = value);
  }

  Future<AsyncState<T>> build();

  AsyncState<T> _state = LoadingState<T>();

  AsyncState<T> get state => _state;

  set setState(AsyncState<T> value) {
    if (_state != value) {
      _state = value;
      notifyListeners();
    }
  }
}
