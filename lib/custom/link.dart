import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Link extends StatelessWidget {
  const Link(this.text, this.onClick,
      {Key key, this.weight = FontWeight.w400, this.color = Colors.blue})
      : super(key: key);
  final String text;
  final Function onClick;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2.copyWith(
              color: color,
              fontWeight: weight,
              decoration: TextDecoration.underline,
              letterSpacing: 0.2),
          children: <TextSpan>[
            TextSpan(
              text: text,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onClick();
                },
            ),
          ],
        ),
      ),
    );
  }
}
