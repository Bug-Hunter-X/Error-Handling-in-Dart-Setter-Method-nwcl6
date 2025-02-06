```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // Using ?? to avoid null errors
  set value(int newValue) {
    if (newValue >= 0) {
      _value = newValue;
    } else {
      // Handle negative value appropriately
      _value = 0; // Or throw an exception
    }
  }
}

void main() {
  final myObject = MyClass(10);
  print('Initial value: ${myObject.value}'); // Output: 10
  myObject.value = -5; // Assign a negative value
  print('Value after assigning -5: ${myObject.value}'); // Output: 0 (or handles exception)
}
```