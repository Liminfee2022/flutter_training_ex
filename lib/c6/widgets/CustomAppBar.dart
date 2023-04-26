import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.leading, this.titleWidget, this.showActionIcon = false,}) : super(key: key);
  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
      child: Stack(
        children: [
          Positioned.fill(child: titleWidget == null ? Center(
            child: Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white,
            )),
          ) : Center(child: titleWidget!,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leading ?? Transform.translate(
                  offset: const Offset(-14, 0),
                child: const BackButton(),
              ),
              if (showActionIcon ) Transform.translate(
                  offset: const Offset(10, 0),
                child: InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.menu),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(
    double.maxFinite,
    80,
  );
}
