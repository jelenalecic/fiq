import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class WhatPlatformChannelRepresents extends StatelessWidget {
  const WhatPlatformChannelRepresents({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
            "Platform channel represents a mechanism to 'talk' to a host platform by sending and receiving messages.\n"),
        const Text(
            'Flutter uses a flexible system that allows you to call platform-specific APIs whether available in Kotlin or Java code on Android, or in Swift or Objective-C code on iOS.\n'),
        const Text(
            'Messages and responses are passed asynchronously, to ensure the user interface remains responsive.\n'),
        const Text(
            'Even though Flutter sends messages to and from Dart asynchronously, whenever you invoke a channel method, you must invoke that method on the platform’s main thread. \n'),
        const Text(
            'The standard platform channels use a standard message codec that supports efficient binary serialization of simple JSON-like values, such as booleans, numbers, Strings, byte buffers, and Lists and Maps of these. The serialization and deserialization of these values to and from messages happens automatically when you send and receive values.\n'),
        const Text('More info and example:\n'),
        Link('Writing custom platform-specific code', () {
          launchInBrowser(
              'https://flutter.dev/docs/development/platform-integration/platform-channels');
        }),
      ],
    );
  }
}
