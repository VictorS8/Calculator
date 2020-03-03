import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  final String text;

  Display({this.text});

  final Color _greyColor = Color.fromRGBO(48, 48, 48, 1);
  final Color _whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: _greyColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 60,
                textAlign: TextAlign.end,
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 60,
                  color: _whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
