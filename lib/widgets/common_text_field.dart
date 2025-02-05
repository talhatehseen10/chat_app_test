import 'package:chat_test_app/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:chat_test_app/constants/constants.dart';
import 'package:chat_test_app/extensions/context_extension.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.controller,
    this.focusNode,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.lableText,
    this.keyboaredtype,
    this.prefix,
    this.prefixConstraints,
    this.suffixIcon,
    this.minLine,
    this.suffixConstraints,
    this.validator,
    this.readOnly,
    this.maxLength,
    this.autofocus = false,
    this.inputFormatter,
    this.onChanged,
    this.initialValue,
    this.fillColor = const Color(0xFFF6F7F8),
    this.borderColor = const Color(0xffDDDDDD),
  });

  final double? width;
  final double? height;
  final bool? readOnly;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? isObscureText;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final int? maxLength;
  final int? minLine;
  final String? hintText;
  final String? lableText;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffixIcon;
  final BoxConstraints? suffixConstraints;
  final String? Function(String?)? validator;
  final TextInputType? keyboaredtype;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatter;
  final void Function(String)? onChanged;
  final Color fillColor;
  final String? initialValue;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      onChanged: onChanged,
      initialValue: initialValue,
      cursorColor: context.textTheme.bodySmall!.color,
      style: context.bodySmall.copyWith(
        color: AppColors.blackShade8,
        fontSize: Sizes.TEXT_SIZE_14,
      ),
      keyboardType: keyboaredtype ?? TextInputType.emailAddress,
      controller: controller,
      focusNode: focusNode,
      obscureText: isObscureText!,
      minLines: minLine ?? 1,
      textInputAction: textInputAction,
      maxLines: maxLines ?? 1,
      readOnly: readOnly ?? false,
      decoration: _buildDecoration(context, height),
      validator: validator,
      maxLength: maxLength,
      inputFormatters: inputFormatter,
    );
  }

  _buildDecoration(BuildContext context, double? height) {
    return InputDecoration(
      hintText: hintText,
      // contentPadding: const EdgeInsets.symmetric(
      //     vertical: Sizes.PADDING_16, horizontal: Sizes.PADDING_8),
      hintStyle: context.bodySmall.copyWith(
          color: LightTheme.hintTextColor, fontWeight: FontWeight.bold),
      labelText: lableText,
      labelStyle: context.bodySmall,
      // enabledBorder: context.enabledBorder,
      //disabledBorder: context.enabledBorder,
      // focusedBorder: context.focusedBorder,
      //focusedErrorBorder: context.errorBorder,
      //errorBorder: context.errorBorder,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(Sizes.RADIUS_6),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(Sizes.RADIUS_6),
      ),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffixIcon,
      suffixIconConstraints: suffixConstraints,
      fillColor: fillColor,
      filled: true,
      isDense: true,
    );
  }
}
