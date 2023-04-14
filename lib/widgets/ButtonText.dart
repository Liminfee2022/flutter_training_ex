import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  const ButtonText({
    Key? key,
    required this.title, this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        minimumSize: const Size(88, 36),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      onPressed: onPress,
      child: Text(title,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.0)),
    );
  }
}
