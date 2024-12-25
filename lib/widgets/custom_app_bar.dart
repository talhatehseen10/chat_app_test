import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget customAppBar(BuildContext context,
    {String? title, Widget? leadingWidget}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: leadingWidget ??
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: context.primaryColor,
            size: Sizes.ICON_SIZE_18,
            weight: Sizes.WIDTH_100,
          ),
        ),
    title: Text(title ?? ""),
  );
}
