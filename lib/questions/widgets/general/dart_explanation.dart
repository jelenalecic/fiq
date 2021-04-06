import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class WhatIsDart extends StatelessWidget {
  const WhatIsDart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
            'Dart is a client-optimized programming language for apps on multiple platforms.\n'),
        const Text(
            "It's developed by Google and is used to build mobile, desktop, server, and web applications. It is is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript. It supports interfaces, mixins, abstract classes, reified generics, and type inference.\n"),
        const Text(
            'Dart runtimes and compilers support the combination of two critical features for Flutter: a JIT-based fast development cycle that allows for shape changing and stateful hot reloads in a language with types, plus an Ahead-of-Time compiler that emits efficient ARM code for fast startup and predictable performance of production deployments.\n'),
        const Text('Learn more from:\n'),
        Link('Dart language tour', () {
          launchInBrowser('https://dart.dev/guides/language/language-tour');
        }),
        Link('Language samples', () {
          launchInBrowser('https://dart.dev/samples');
        }),
        Link('Effective Dart', () {
          launchInBrowser('https://dart.dev/guides/language/effective-dart');
        }),
      ],
    );
  }
}
