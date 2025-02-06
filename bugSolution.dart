```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; // Using ?? to avoid null errors
  set value(int newValue) {
    if (newValue >= 0) {
      _value = newValue;
    } else {
      throw Exception('Value cannot be negative'); // Throw an exception
    }
  }
}

void main() {
  final myObject = MyClass(10);
  print('Initial value: ${myObject.value}'); // Output: 10
  try {
    myObject.value = -5; // Assign a negative value
  } catch (e) {
    print('Error: $e'); // Handle the exception
  }
  print('Value after attempting to assign -5: ${myObject.value}'); // Output: 10
}
```