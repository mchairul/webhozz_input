library webhozz_input;
import 'package:flutter/material.dart';

class WebhozzInput extends StatelessWidget {
  final String type;
  final Widget label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  WebhozzInput({
    super.key,
    required this.type,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    required this.obscureText
  }) :  assert(type != '', 'Type Can Not Empty');

  double radiusBorder = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label,
        const SizedBox(height: 16,),
        type == 'default' ?
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
        ):
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10
            ),
            fillColor: const Color(0xffEFEFEF).withOpacity(0.1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radiusBorder)
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(radiusBorder)
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(radiusBorder)
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(radiusBorder)
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true
          ),
          validator: validator,
        )
      ],
    );
  }

}