import 'package:flutter/material.dart';
import 'package:login_bloc/src/Bloc/bloc.dart';

class LoginScreem extends StatelessWidget {
  final bloc = Bloc();
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton()
        ],
      ),
    );
  }
}

Widget emailField() {
  var bloc;
  return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'you@example.com', labelText: 'Email', errorText: ''),
      onChanged: (value) => bloc.changeEmail);
}

Widget passwordField() {
  var bloc;
  return TextField(
      decoration:
          InputDecoration(labelText: 'Contraseña', hintText: 'Contraseña'),
      onChanged: (value) => bloc.changePassword);
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Enviar'),
    onPressed: () {},
  );
}
