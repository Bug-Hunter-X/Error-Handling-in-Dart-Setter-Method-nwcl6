# Dart Error Handling Example

This repository demonstrates a common error handling scenario in Dart involving setters and potential negative values.  The `bug.dart` file shows the initial code with a potential issue where negative values aren't explicitly handled.  `bugSolution.dart` provides a more robust solution.

## Bug Description
The setter for the `value` property in `MyClass` silently assigns 0 when a negative number is given. This may not be the expected behavior, potentially hiding errors. 

## Solution
The solution provides more robust error handling.  It could either explicitly check the value and decide how to proceed (setting to 0, raising an exception, or another action), rather than implicit handling.