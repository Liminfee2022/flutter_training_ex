import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/utils/themes.dart';

class BodyWidgets extends StatefulWidget {
  const BodyWidgets({Key? key, required this.imageBackground, required this.description, required this.onPress, this.textEditing}) : super(key: key);
  final String imageBackground;
  final String description;
  final VoidCallback onPress;
  final TextEditingController? textEditing;

  @override
  State<BodyWidgets> createState() => _BodyWidgetsState();
}

class _BodyWidgetsState extends State<BodyWidgets> {
  FocusNode myFocusNode = FocusNode();
  var textController = TextEditingController();

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.imageBackground),
          fit: BoxFit.cover,
        ),
      ),
      child:
      GestureDetector(
        onTap: () {
          myFocusNode.unfocus();
        },
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: SizedBox(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/Marvel-Logo.svg'),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextField(
                          controller: widget.textEditing,
                          focusNode: myFocusNode,
                          autofocus: true,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 38,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 55),
                        child: Text(
                          widget.description,
                          style: CustomTextStyle.h3
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30, top: 16),
                width: width,
                color: Colors.black,
                child: ElevatedButton(
                  onPressed: widget.onPress,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    textStyle:
                    CustomTextStyle.h3.copyWith(color: Colors.white),
                    primary: Colors.red,
                  ),
                  child: const Text(
                    'Continue',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
