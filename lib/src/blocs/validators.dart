import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      bool emailMatched = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
      if(emailMatched) {
        sink.add(email);
        sink.addError("");
      } else {
        sink.addError('Please enter a valid email');
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if(password.length > 3) {
        sink.add(password);
        sink.addError("");
      } else {
        sink.addError('Password must be 4 characters');
      }
    }
  );
}