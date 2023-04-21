import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c5/widgets/BodyWidgets.dart';
import 'package:flutter_training_ex/routes.dart';

class S1 extends StatefulWidget {
  const S1({Key? key}) : super(key: key);

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BodyWidgets(
      imageBackground: 'assets/images/S1.png',
      description: 'All your favourite MARVEL Movies & Series at one place',
      onPress: () {
        Navigator.pushNamed(context, RouteGenerator.c5S2, arguments: _controller.text);
      },
      textEditing: _controller,
    );
  }
}
