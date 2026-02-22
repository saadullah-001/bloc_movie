import 'package:bloc_movies/config/colors/colors.dart';
import 'package:bloc_movies/config/components/loading_widget.dart';
import 'package:flutter/material.dart';

//custom round button component, we will used this widget show to show button
// this widget is generic, we can change it and this change will appear across the app
class RoundButton extends StatefulWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;
  const RoundButton({
    super.key,
    required this.title,
    this.loading = false,
    required this.onPress,
  });

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPress,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
      child: Center(
        child: widget.loading
            ? const LoadingWidget()
            : Text(widget.title,
                style: const TextStyle(color: AppColors.whiteColor)),
      ),
    );
  }
}
