import 'dart:async';
import 'package:login_bloc/src/Bloc/validatos.dart';

class Bloc with Validators {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Stream<String> get email => _emailController.stream.transform(validaEmail);
  Stream<String> get pasword =>
      _passwordController.stream.transform(validaPassword);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}