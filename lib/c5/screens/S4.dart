import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training_ex/utils/themes.dart';
import 'package:flutter_training_ex/routes.dart';

class S4 extends StatefulWidget {
  final dynamic arguments;
  const S4({Key? key, this.arguments}) : super(key: key);

  @override
  State<S4> createState() => _S4State();
}

class _S4State extends State<S4> {
  late bool checkArgument1;
  late bool checkArgument2;
  late bool checkArgument3;
  final GlobalKey key = GlobalKey();
  Size? logoSize;
  Offset? logoPosition;

  @override
  void initState() {
    checkArgument1 =
        widget.arguments['s1'] != null && widget.arguments['s1'] != '';
    checkArgument2 =
        widget.arguments['s2'] != null && widget.arguments['s2'] != '';
    checkArgument3 =
        widget.arguments['s3'] != null && widget.arguments['s3'] != '';

    super.initState();
  }

  void _getSize() {
    final size = key.currentContext!.size;
    if (size != null) {
      setState(() {
        logoSize = size;
      });
    }
  }

  getPosition() {
    final RenderBox renderBox =
        key.currentContext?.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    setState(() {
      logoPosition = offset;
    });
  }

  void _loginOnPress() {
    _getSize();
    WidgetsBinding.instance.addPostFrameCallback((_) => getPosition());
    if (checkArgument1 && checkArgument2 && checkArgument3) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Login Successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
          elevation: 24.0,
          backgroundColor: Colors.white,
        ),
        barrierDismissible: false,
      );
    } else {
      if (!checkArgument1) {
        Navigator.pushNamed(context, RouteGenerator.c5S1);
      } else if (!checkArgument2) {
        Navigator.pushNamed(context, RouteGenerator.c5S2);
      } else if (!checkArgument3) {
        Navigator.pushNamed(context, RouteGenerator.c5S3);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final arguments = (widget.arguments ?? {});
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/S4.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SizedBox(
                height: height,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Marvel-Logo.svg',
                      key: key,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    if (checkArgument1)
                      Text(
                        'S1: ${arguments['s1']}',
                        style:
                            CustomTextStyle.body4.copyWith(color: Colors.white),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (checkArgument2)
                      Text(
                        'S2: ${arguments['s2']}',
                        style:
                            CustomTextStyle.body4.copyWith(color: Colors.white),
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (checkArgument3)
                      Text(
                        'S3: ${arguments['s3']}',
                        style:
                            CustomTextStyle.body4.copyWith(color: Colors.white),
                      ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: SizedBox(
                        width: width,
                        child: ElevatedButton(
                          onPressed: _loginOnPress,
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              textStyle: CustomTextStyle.body4
                                  .copyWith(color: Colors.white),
                              primary: Colors.transparent,
                              side: const BorderSide(
                                width: 2.0,
                                color: Colors.red,
                              )),
                          child: const Text(
                            'Login',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          logoSize != null ? Positioned(
              top: 50,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Logo Width: ${logoSize != null ? '${logoSize?.width}' : ''}',
                    style: CustomTextStyle.body4.copyWith(color: Colors.white, decoration: TextDecoration.none,),
                  ),
                  Text(
                    'Logo Width: ${logoSize != null ? '${logoSize?.height}' : ''}',
                    style: CustomTextStyle.body4.copyWith(color: Colors.white, decoration: TextDecoration.none,),
                  ),
                  Text(
                    'Logo Dx: ${logoPosition != null ? '${logoPosition?.dx}' : ''}',
                    style: CustomTextStyle.body4.copyWith(color: Colors.white, decoration: TextDecoration.none,),
                  ),
                  Text(
                    'Logo Dy: ${logoPosition != null ? '${logoPosition?.dy}' : ''}',
                    style: CustomTextStyle.body4.copyWith(color: Colors.white, decoration: TextDecoration.none,),
                  ),
                ],
              )) : const SizedBox(),
        ],
      ),
    );
  }
}
