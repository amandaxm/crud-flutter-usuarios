import 'package:flutter/material.dart';
class TextFieldWidget extends StatefulWidget {
  final String placeholder;
  final bool autofocus;
  final Function(String) onChanged;
  final TextInputType inputType;
  final String mask;
  final TextCapitalization textCapitalization;
  final TextEditingController controller;
  final double fontSize;
  final Color backgroundColorContainer;
  final Color textColor;
  final Color placeholderColor;
  final FontWeight fontWeight;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final FocusNode focusNode;
  final bool enabled;
  final bool autocorrect;
  final int maxLines;
  final int maxLength;
  final double height;
  final bool obscureText;
  final String label;

  TextFieldWidget({
    this.label,
    this.placeholder,
    this.height,
    this.maxLines,
    this.maxLength,
    this.onChanged,
    this.inputType,
    this.mask,
    this.textCapitalization,
    this.autofocus,
    this.controller,
    this.fontSize = 16,
    this.backgroundColorContainer,
    this.textColor,
    this.fontWeight,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.placeholderColor,
    this.enabled = true,
    this.autocorrect = true,
    this.obscureText = false,
  });

  @override
  TextFieldInput createState() => TextFieldInput();
}

class TextFieldInput extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
        labelText: this.widget.label,
        labelStyle: TextStyle(color: Colors.black)),
         textAlign: TextAlign.center,
         style: TextStyle(color: Colors.black, fontSize: 25),
    ),
    );
  }}




