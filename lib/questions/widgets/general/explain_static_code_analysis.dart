import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class StaticCodeAnalysis extends StatelessWidget {
  const StaticCodeAnalysis({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
            'Static analysis allows you to find problems before executing a single line of code. It’s a powerful tool used to prevent bugs and ensure that code conforms to style guidelines.\n'),
        const Text(
            'For example, static analysis will suggest you to make a widget constant, or to declare a variable type, to avoid classes with only static members, to cancel subscription to the stream etc etc.\n'),
        const Text(
            'In the Dart ecosystem, the Dart Analysis Server and other tools use the analyzer package to perform static analysis.\n'),
        Link('Analyzer', () {
          launchInBrowser('https://pub.dev/packages/analyzer');
        }),
        const Text(
            'You can customize static analysis to look for a variety of potential problems, including errors and warnings specified in the Dart language spec. You can also configure the linter, one of the analyzer’s plugins, to ensure that your code complies with the Dart Style Guide and other suggested guidelines in Effective Dart. Dart tools such as the Dart compiler (dart compile), dart analyze, flutter analyze, and JetBrains IDEs use the analyzer package to evaluate your code.\n'),
        const Text(
            'Customisation is done by placing the analysis options file, analysis_options.yaml, at the root of the package, in the same directory as the pubspec file. You do not need to include analyzer lib in your pubspec file!\n'),
        const Text("You can copy Flutter's current analysis_options file and modify it:"),
        Link('analysis_options.yaml', () {
          launchInBrowser(
              'https://github.com/flutter/flutter/blob/master/analysis_options.yaml');
        }),
        const Text(
            'You can enable/disable or comment out each rule, so you can create your custom analysis style, or you can use pedantic lib, which provides you with default rules.\n'),
        Link('Pedantic', () {
          launchInBrowser('https://pub.dev/packages/pedantic');
        }),
        Link('Customizing static analysis', () {
          launchInBrowser('https://dart.dev/guides/language/analysis-options');
        }),
        const Text(
            'Static analysis makes your program more efficient and less prone to bugs, but also your coding style gets much better. Make sure to add static analysis when you start writing your app, not at the end.')
      ],
    );
  }
}
