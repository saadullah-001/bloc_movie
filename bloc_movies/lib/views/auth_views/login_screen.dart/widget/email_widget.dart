import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/utils/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailWidget extends StatefulWidget {
  final FocusNode passwordFocus;
  const EmailWidget({super.key, required this.passwordFocus});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  final FocusNode _emailFocus = FocusNode();
  final GlobalKey<FormFieldState<String>> _emailFeildKey =
      GlobalKey<FormFieldState<String>>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _emailFocus.addListener(() {
      if (!_emailFocus.hasFocus) {
        _emailFeildKey.currentState!.validate();
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocus.dispose();
    widget.passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("email build");
    return Column(
      children: [
        SizedBox(
            child: BlocBuilder<LoginBloc, LoginStates>(
                buildWhen: (previous, current) {
          return previous.email != current.email;
        }, builder: (BuildContext context, state) {
          return TextFormField(
            controller: _emailController,
            focusNode: _emailFocus,
            key: _emailFeildKey,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            onChanged: (value) {
              context.read<LoginBloc>().add(
                  EmailEvent(email: _emailController.text.trim().toString()));
            },
            validator: (value) => AppValidator.validateEmail(value),
            onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(widget.passwordFocus);
            },
            onEditingComplete: () {
              _emailFeildKey.currentState!.validate();
            },
          );
        })),
        SizedBox(height: 11),
      ],
    );
  }
}
