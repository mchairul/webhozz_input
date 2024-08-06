library webhozz_input;
import 'package:flutter/material.dart';

class WebhozzInput extends StatefulWidget {
  final String type;
  final Widget label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const WebhozzInput({
    super.key,
    required this.type,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.validator,
    required this.obscureText
  }) :  assert(type != '', 'Type Can Not Empty');

  @override
  State<WebhozzInput> createState() => _WebhozzInputState();
}

class _WebhozzInputState extends State<WebhozzInput> {

  double radiusBorder = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label,
        const SizedBox(height: 16,),
        widget.type == 'default' ?
        TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          validator: widget.validator,
        ):
        TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText,
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
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              filled: true
          ),
          validator: widget.validator,
        )
      ],
    );
  }
}
