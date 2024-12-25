import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:chat_test_app/themes/controller/theme_controller.dart';
import 'package:chat_test_app/themes/themes.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.backgoundColor = LightTheme.buttonBackgroundColor,
      this.fontColor = AppColors.white,
      this.size,
      this.height,
      this.width = 0.15,
      this.leadingWidget,
      this.hideIcons = false});

  final themeController = Get.find<ThemeController>();
  final VoidCallback? onPressed;
  final String text;
  final Size? size;
  final double? height;
  final Color backgoundColor;
  final Color fontColor;
  final double width;
  final Widget? leadingWidget;
  final bool? hideIcons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Sizes.HEIGHT_50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, double.infinity),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.RADIUS_6),
            ),
            disabledBackgroundColor: const Color(0xff881617),
            backgroundColor: backgoundColor),
        onPressed: onPressed,
        child: Row(
          children: [
            hideIcons!
                ? const SizedBox()
                : leadingWidget ??
                    const SizedBox(
                      width: Sizes.WIDTH_20,
                    ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: themeController.isDark
                        ? context.bodyLarge
                        : context.bodyLarge.copyWith(
                            color: fontColor, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            hideIcons!
                ? const SizedBox()
                : leadingWidget == null
                    ? const Icon(
                        Icons.arrow_forward_rounded,
                        size: Sizes.ICON_SIZE_20,
                        color: Colors.white,
                      )
                    : const SizedBox()
          ],
        ),
      ),
    );
  }
}
