// app/view/home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/app/controller/provider.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int countValue = ref.watch(counterNotifierProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$countValue',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(counterNotifierProvider.notifier).decrement();
              },
              label: const Icon(Icons.remove),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(counterNotifierProvider.notifier).increment();
              },
              label: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
