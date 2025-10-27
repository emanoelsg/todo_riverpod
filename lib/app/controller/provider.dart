// app/controller/provider.dart
import 'package:flutter_riverpod/legacy.dart';

final counterNotifierProvider = StateNotifierProvider<CounterNotifier, int>((
  ref,
) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
