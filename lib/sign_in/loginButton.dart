import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:yellow_carmailla/common_widgets/custom_raised_button.dart';

class LogInButton extends CustomRaisedButton {
  LogInButton({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    required Icon icon,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
