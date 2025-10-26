// app/controller/provider.dart
import 'package:flutter_riverpod/legacy.dart';
import 'package:todo_riverpod/app/model/counter_,model.dart';


final counterModelProvider = ChangeNotifierProvider<CounterModel>((ref) {
  return CounterModel(counter: 0);
});
