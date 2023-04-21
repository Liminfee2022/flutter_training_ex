import 'package:flutter/material.dart';
import 'package:flutter_training_ex/c5/widgets/BodyWidgets.dart';
import 'package:flutter_training_ex/routes.dart';

class S3 extends StatefulWidget {
  final dynamic arguments;
  const S3({Key? key, this.arguments}) : super(key: key);

  @override
  State<S3> createState() => _S3State();
}

class _S3State extends State<S3> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (widget.arguments ?? {});
    return BodyWidgets(
      imageBackground: 'assets/images/S3.png',
      description: 'Create profiles for different members & get personalised recommendations',
      onPress: () {
        Navigator.pushNamed(context, RouteGenerator.c5S4, arguments: {
          ...arguments,
          's3': _controller.text,
        });
      },
      textEditing: _controller,
    );
  }
}