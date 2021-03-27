import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class PackagesAndPluginsExplanation extends StatelessWidget {
  const PackagesAndPluginsExplanation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text('Flutter supports using shared packages contributed by other developers to the Flutter and Dart ecosystems. This allows quickly building an app without having to develop everything from scratch.\n'),
        const Text('Minimal Dart package is a directory containing a pubspec file. Additionally, a package can contain dependencies (listed in the pubspec), Dart libraries, apps, resources, tests, images, and examples. The pub.dev site lists many packages, developed by Google engineers and generous members of the Flutter and Dart community, that you can use in your app.\n'),
        const Text('A plugin package is a special kind of package that makes platform functionality available to the app. Plugin packages can be written for Android (using Kotlin or Java), iOS (using Swift or Objective-C), web, macOS, Windows, Linux, or any combination thereof. For example, a plugin might provide Flutter apps with the ability to use a device’s camera.\n'),
        const Text('Learn more from:\n'),
        Link('Packages & plugins', () {
          launchInBrowser('https://flutter.dev/docs/development/packages-and-plugins');
        }),
      ],
    );
  }
}
