import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c5/widgets/BodyWidgets.dart';
import 'package:flutter_training_ex/routes.dart';

class S2 extends StatefulWidget {
  final dynamic arguments;
  const S2({Key? key, this.arguments}) : super(key: key);

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final arguments = (widget.arguments ?? '') as String;

    return BodyWidgets(
      imageBackground: 'assets/images/S2.png',
      description: 'Watch Online or Download Offline',
      onPress: () {
        Navigator.pushNamed(context, RouteGenerator.c5S3, arguments: {
          's1': arguments,
          's2': _controller.text,
        });
      },
      textEditing: _controller,
    );
  }
}