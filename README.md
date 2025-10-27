Simple Riverpod Counter App

This project is a minimal demonstration of state management in Flutter using the modern Riverpod library. It serves as a perfect foundation for understanding core Riverpod concepts before scaling up to complex applications like a Todo or E-commerce feature.

Key Features

Increment/Decrement: Basic counter functionality.

Reactive UI: The UI updates instantly when the state changes, thanks to Riverpod's listening mechanism.

Architecture & Riverpod Concepts

This application utilizes the recommended State Notifier pattern for managing simple, synchronous state changes:

Component

Riverpod Type

Role in the App

CounterNotifier

StateNotifier<int>

The Logic/Brain. A Dart class responsible for holding the mutable state (int) and the methods (increment(), decrement()) that modify it. It operates purely in the data layer.

counterNotifierProvider

StateNotifierProvider<T>

The Access Point. A global variable that wraps the CounterNotifier class and exposes its integer state to the application.

ref.watch()

Listener

Used in MyHomePage to listen to the counter value (final countValue = ref.watch(...)). This forces the widget to rebuild whenever the number changes.

ref.read()

Action Caller

Used in the onPressed callback of the buttons to access and execute a method on the Notifier (ref.read(provider.notifier).increment()).

Clean State Management

The CounterNotifier updates its state immutably by setting state = state + 1 (or state++ in this simple case), ensuring safe and predictable state changes across the application.

How to Run

Clone this repository.

Ensure you have Flutter installed.

Run the app from your terminal:

flutter run
