class CounterState {
  final int counter;
  final String? message;

  CounterState({required this.counter, this.message});

  CounterState copyWith({int? counter, String? message}) {
    return CounterState(
      counter: counter ?? this.counter,
      message: message,
    );
  }
}
