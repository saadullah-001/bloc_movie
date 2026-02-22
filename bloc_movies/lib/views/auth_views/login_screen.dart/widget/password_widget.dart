import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordWidget extends StatefulWidget {
  final FocusNode passwordFocus;
  const PasswordWidget({super.key, required this.passwordFocus});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.passwordFocus.addListener(() {
      if (!widget.passwordFocus.hasFocus) {
        _passwordFieldKey.currentState!.validate();
      }
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    widget.passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("password build");
    return Column(
      children: [
        SizedBox(
            child: BlocBuilder<LoginBloc, LoginStates>(
          buildWhen: (previous, current) {
            return previous.password != previous.password;
          },
          builder: (context, state) {
            return TextFormField(
              controller: _passwordController,
              focusNode: widget.passwordFocus,
              key: _passwordFieldKey,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              onChanged: (value) {
                context.read<LoginBloc>().add(PasswordEvent(
                    password: _passwordController.text.trim().toString()));
              },
              onFieldSubmitted: (value) {},
              validator: (value) => AppValidator.validatePassword(value),
            );
          },
        )),
        SizedBox(height: 11),
      ],
    );
  }
}
