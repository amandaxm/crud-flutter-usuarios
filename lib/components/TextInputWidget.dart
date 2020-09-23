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
  static const color = const Color(0xFFe02041);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Theme(


          data: new ThemeData(
            primaryColor: color,
            primaryColorDark: color,
            fontFamily: 'Roboto Mono',

          ),
        child: TextField(
        autocorrect: this.widget.autocorrect,
        obscureText: this.widget.obscureText,
        enabled: this.widget.enabled,
        controller: this.widget.controller,
        focusNode: this.widget.focusNode,
        keyboardType: TextInputType.name,
          decoration: new InputDecoration(

            //border: OutlineInputBorder(),
            labelText: this.widget.label,
            labelStyle: TextStyle(),
        ),

        textAlign: TextAlign.center,
        style: TextStyle( fontSize: 20),
      )

    ),
    );
  }
}
