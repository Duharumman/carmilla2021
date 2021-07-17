import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:yellow_carmailla/common_widgets/custom_raised_button.dart';

class price_button extends CustomRaisedButton {
  price_button({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
