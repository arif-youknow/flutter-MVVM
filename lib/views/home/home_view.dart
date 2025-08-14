import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_project/viewmodels/counter_viewmodel.dart';



class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final counter = ref.watch(counterProvider); 
    final counterVM = ref.read(counterProvider.notifier);
    
    return Scaffold(
      appBar: AppBar(title: const Text("MVVM Counter (Riverpod)")),
      body: Center(
        child: Text(
          '${counter.count}',
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterVM.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
