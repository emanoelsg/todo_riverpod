// app/view/home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/app/controller/provider.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${ref.watch(counterModelProvider).counter}'),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(counterModelProvider.notifier).increment();
              },
              label: const Icon(Icons.add),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(counterModelProvider.notifier).decrement();
              },
              label: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
