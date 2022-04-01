import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onChangingEntity;
  final bool enableBack;
  final Color? color;
  final Color? iconColor;

  const CustomAppBar(
      {Key? key,
      this.enableBack = false,
      this.onChangingEntity,
      this.color = Colors.white,
      this.iconColor = Colors.red})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: color,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            enableBack
                ? InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: iconColor,
                      size: 24.0,
                    ),
                  )
                : InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: Icon(
                      Icons.menu,
                      color: iconColor,
                      size: 24.0,
                    ),
                  ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}

