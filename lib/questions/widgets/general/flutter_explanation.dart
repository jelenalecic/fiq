import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class WhatIsFlutter extends StatelessWidget {
  const WhatIsFlutter({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
            'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.\n'),
        const Text('Flutter uses Dart programming language, '
            'also developed by Google.\n'),
        const Text(
            'Flutter apps can be developed in Android Studio, IntelliJ IDEA or VS Code with the help of IDE plugins.\n'),
        const Text(
            'On the surface, Flutter is a reactive, pseudo-declarative UI framework, in which the developer provides a mapping from application state to interface state, and the framework takes on the task of updating the interface at runtime when the application state changes.\n'),
        const Text('As of Flutter 2, supported platforms are: \n'),
        const Text('• Android API 16+'),
        const Text('• iOS 8+'),
        const Text('• Linux Debian 10+'),
        const Text('• macOS El Capitan+'),
        const Text('• Windows 7+'),
        const Text('• Multiple Web Browsers\n'),
        const Text('Learn more from:\n'),
        Link('Flutter architectural overview', () {
          launchInBrowser(
              'https://flutter.dev/docs/resources/architectural-overview');
        }),
        Link('Engine architecture', () {
          launchInBrowser(
              'https://github.com/flutter/flutter/wiki/The-Engine-architecture');
        }),
        Link('Flutter FAQ', () {
          launchInBrowser('https://flutter.dev/docs/cookbook');
        }),
        Link('Codelabs', () {
          launchInBrowser('https://flutter.dev/docs/codelabs');
        }),
        Link('Tutorials', () {
          launchInBrowser('https://flutter.dev/docs/reference/tutorials');
        })
      ],
    );
  }
}
