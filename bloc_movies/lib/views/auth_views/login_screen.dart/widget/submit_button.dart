import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/config/components/round_button.dart';
import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:bloc_movies/utils/enums/enums.dart';
import 'package:bloc_movies/utils/toast_message/toast_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//custom round button component, we will used this widget show to show button
// this widget is generic, we can change it and this change will appear across the app
class SubmitButton extends StatefulWidget {
  final GlobalKey<FormState> globalKey;
  const SubmitButton({super.key, required this.globalKey});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool noInternet = true;

  void login() {
    if (widget.globalKey.currentState!.validate()) {
      context.read<LoginBloc>().add(LoginSubmitEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Submit button build");
    return BlocConsumer<LoginBloc, LoginStates>(
      listener: (context, state) {
        if (state.response.status == ApiStatus.error) {
          ToastMessage.toastMessage(message: state.response.message.toString());
        } else if (state.response.status == ApiStatus.loading) {
          ToastMessage.toastMessage(message: 'Submitting');
        } else if (state.response.status == ApiStatus.completed) {
          Navigator.pushReplacementNamed(context, RoutesName.movieScreen);
        }
      },
      buildWhen: (previous, current) =>
          previous.response.status != previous.response.status,
      builder: (context, state) {
        return RoundButton(
          title: 'Login',
          loading: state.response.status == ApiStatus.loading,
          onPress: () {
            if (state.response.status == ApiStatus.loading) {
            } else {
              login();
            }
          },
        );
      },
    );
  }
}
