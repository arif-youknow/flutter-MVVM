import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_project/models/counter_model.dart';



class CounterViewModel extends StateNotifier<CounterModel> {
  CounterViewModel() : super(CounterModel());

  void increment() {
    state.increment();
    state = CounterModel(count: state.count); 
  }
}


final counterProvider =
    StateNotifierProvider<CounterViewModel, CounterModel>(
  (ref) => CounterViewModel(),
);
