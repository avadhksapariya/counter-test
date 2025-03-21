class Counter {
  int _counter = 0;

  int get count => _counter;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    if (_counter != 0) {
      _counter--;
    }
  }
}
