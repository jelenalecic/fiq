import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class TestingInFlutter extends StatelessWidget {
  const TestingInFlutter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
            'In Flutter, there a 3 types of tests: Unit, Widget and Integration ones.\n'),
        const Text(
            'A unit test tests a single function, method, or class. The goal of a unit test is to verify the correctness of a unit of logic under a variety of conditions. External dependencies of the unit under test are generally mocked out. Unit tests generally don’t read from or write to disk, render to screen, or receive user actions from outside the process running the test.\n'),
        const Text(
            'A widget test tests a single widget. The goal of a widget test is to verify that the widget’s UI looks and interacts as expected. Testing a widget involves multiple classes and requires a test environment that provides the appropriate widget lifecycle context.For example, the Widget being tested should be able to receive and respond to user actions and events, perform layout, and instantiate child widgets. A widget test is therefore more comprehensive than a unit test. However, like a unit test, a widget test’s environment is replaced with an implementation much simpler than a full-blown UI system.\n'),
        const Text(
            'Golden tests are just a type of widget tests, that match your testing widget with provided image. If your widget looks exactly the same as the provided image, your test will pass.\n'),
        const Text('An integration test tests a complete app or a large part of an app. The goal of an integration test is to verify that all the widgets and services being tested work together as expected. Furthermore, you can use integration tests to verify your app’s performance. Generally, an integration test runs on a real device or an OS emulator, such as iOS Simulator or Android Emulator. The app under test is typically isolated from the test driver code to avoid skewing the results.\n'),
        const Text('Learn more from:\n'),
        Link('Testing Flutter apps', () {
          launchInBrowser('https://flutter.dev/docs/testing');
        }),
        Link('Writing a golden file test', () {
          launchInBrowser('https://github.com/flutter/flutter/wiki/Writing-a-golden-file-test-for-package:flutter');
        }),
        Link('matchesGoldenFile function', () {
          launchInBrowser('https://api.flutter.dev/flutter/flutter_test/matchesGoldenFile.html');
        }),
      ],
    );
  }
}
