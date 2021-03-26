import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final Icon icon;
  final double padding;
  final double height;
  final double width;
  final double radius;
  final bool circleIcon;
  final bool iconLeft;
  final TextStyle textStyle;
  final Color color;

  const CustomeButton({
    Key key,
    this.onPress,
    this.text,
    this.icon,
    this.padding = 5,
    this.height = 45,
    this.radius = 20,
    this.circleIcon = true,
    this.iconLeft = false,
    this.textStyle,
    this.color,
    this.width = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Container(
        width: width,
        height: height,
        child: RaisedButton(
          onPressed: onPress,
          padding: EdgeInsets.all(padding),
          color: color,
          child: Row(
            children: <Widget>[
              icon != null && iconLeft
                  ? Container(
                      child: Center(child: icon),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: circleIcon ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    )
                  : Container(
                      height: height,
                    ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
              ),
              icon != null && !iconLeft
                  ? Container(
                      child: Center(child: icon),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: circleIcon ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    )
                  : Container(
                      height: height,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
