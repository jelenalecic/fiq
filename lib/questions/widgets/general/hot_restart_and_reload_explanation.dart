import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class HotRestartAndReloadExplanation extends StatelessWidget {
  const HotRestartAndReloadExplanation({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
            'Flutter’s hot reload feature helps you quickly and easily experiment, build UIs, add features, and fix bugs. Hot reload works by injecting updated source code files into the running Dart Virtual Machine (VM). After the VM updates classes with the new versions of fields and functions, the Flutter framework automatically rebuilds the widget tree, allowing you to quickly view the effects of your changes.\n'),
        const Text('Only Flutter apps in debug mode can be hot reloaded.\n'),
        const Text(
            'Hot reload loads code changes into the VM and re-builds the widget tree, preserving the app state; it doesn’t rerun main() or initState().\n'),
        const Text(
            'Hot restart loads code changes into the VM, and restarts the Flutter app, losing the app state.\n'),
        const Text(
            'Full restart restarts the iOS, Android, or web app. This takes longer because it also recompiles the Java / Kotlin / ObjC / Swift code. On the web, it also restarts the Dart Development Compiler. \n'),
        const Text(
            'Flutter web currently supports hot restart but not hot reload!\n'),
        const Text('Learn more from:\n'),
        Link('Hot reload', () {
          launchInBrowser(
              'https://flutter.dev/docs/development/tools/hot-reload');
        }),
      ],
    );
  }
}
