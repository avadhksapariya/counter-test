import 'package:counter_test/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // given when then

  group(
    'Counter Class - ',
    () {
      // Arrange
      // final Counter counter = Counter();
      test(
        'given counter class when it is instantiated then value of count should be 0',
        () {
          // Arrange
          final Counter counter = Counter();
          // Act
          final value = counter.count;
          // Assert
          expect(value, 0);
        },
      );

      test(
        'given counter class when it is incremented then the value of count should be 1',
        () {
          // Arrange
          final Counter counter = Counter();
          // Act
          counter.incrementCounter();
          final value = counter.count;
          // Assert
          expect(value, 1);
        },
      );

      test(
        'given counter class when it is decremented then the value of count should be 0',
        () {
          // Arrange
          final Counter counter = Counter();
          // Act
          counter.decrementCounter();
          final value = counter.count;
          // Assert
          expect(value, 0);
        },
      );
    },
  );
}
