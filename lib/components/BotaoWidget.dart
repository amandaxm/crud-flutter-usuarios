import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final EdgeInsets margin;
  final Function onPressed;
  final double height;
  final double width;
  final bool border;

  const CustomButtonWidget(
      {Key key,
        this.title,
        this.margin,
        this.onPressed,
        this.height,
        this.width,

        this.border=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width ?? 50,
        height: this.height ?? 50,
        margin: this.margin,
        child: RaisedButton(
        onPressed: onPressed,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.grey,
          child: Text(
            title,
            style: TextStyle(
              // color: this.style.titleColor,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
        ),
    );
  }
}