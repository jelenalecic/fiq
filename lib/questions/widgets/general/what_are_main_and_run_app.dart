import 'package:flutter/material.dart';

class WhatAreMainAndRunApp extends StatelessWidget {
  const WhatAreMainAndRunApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const <Widget>[
        Text(
            'The main() function serves as the entrypoint to the app, meaning, your program(app) starts its execution from there.\n'),
        Text(
            'The runApp() function takes the given Widget and makes it the root of the widget tree.\n'),
      Text('Calling runApp() again will detach the previous root widget from the screen and attach the given widget in its place. The new widget tree is compared against the previous widget tree and any differences are applied to the underlying render tree, similar to what happens when a StatefulWidget rebuilds after calling State.setState().\n'),
      ],
    );
  }
}
