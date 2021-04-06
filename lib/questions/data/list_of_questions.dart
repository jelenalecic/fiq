import 'package:fiq/custom/not_implemented.dart';
import 'package:fiq/questions/data/question.dart';
import 'package:fiq/questions/widgets/dart/explain_async_future_await.dart';
import 'package:fiq/questions/widgets/general/dart_explanation.dart';
import 'package:fiq/questions/widgets/general/explain_static_code_analysis.dart';
import 'package:fiq/questions/widgets/general/flutter_explanation.dart';
import 'package:fiq/questions/widgets/general/hot_restart_and_reload_explanation.dart';
import 'package:fiq/questions/widgets/general/packages_and_plugins_explanation.dart';
import 'package:fiq/questions/widgets/general/testing_in_flutter.dart';
import 'package:fiq/questions/widgets/general/what_are_main_and_run_app.dart';
import 'package:fiq/questions/widgets/general/what_platform_channel_represents.dart';

///
/// - - -
///* * * * ADD NEW QUESTIONS HERE!!
/// - - -
///
List<Question> questions = <Question>[
  Question('What is Flutter?', const WhatIsFlutter(), QuestionType.general),
  Question('What is Dart?', const WhatIsDart(), QuestionType.general),
  Question('What are packages and plugins?',
      const PackagesAndPluginsExplanation(), QuestionType.general),
  Question('Explain Async/Await/Future.', const ExplainAsyncAwaitFuture(),
      QuestionType.dart),
  Question('What types of parameters exist in Dart?', const NotYetImplemented(),
      QuestionType.dart),
  Question('Explain types of Streams in Dart.', const NotYetImplemented(),
      QuestionType.dart),
  Question(
      'What are const objects?', const NotYetImplemented(), QuestionType.dart),
  Question('What are sync*, async*, yield and yield*?',
      const NotYetImplemented(), QuestionType.dart),
  Question('What is an Isolate?', const NotYetImplemented(), QuestionType.dart),
  Question(
      'Explain types of Widgets.', const NotYetImplemented(), QuestionType.ui),
  Question('Explain Keys.', const NotYetImplemented(), QuestionType.ui),
  Question(
      'Explain Widget lifecycle.', const NotYetImplemented(), QuestionType.ui),
  Question('What is an app state?', const NotYetImplemented(),
      QuestionType.stateManagement),
  Question('What are main() and runApp()?', const WhatAreMainAndRunApp(),
      QuestionType.general),
  Question('What are hotRestart and hotReload?',
      const HotRestartAndReloadExplanation(), QuestionType.general),
  Question('What platform channel represents?',
      const WhatPlatformChannelRepresents(), QuestionType.general),
  Question('How does testing in Flutter work?', const TestingInFlutter(),
      QuestionType.general),
  Question('Explain extension methods.', const NotYetImplemented(),
      QuestionType.dart),
  Question('Explain how static code analysis works.',
      const StaticCodeAnalysis(), QuestionType.general),
  Question(
      'What is a BuildContext?', const NotYetImplemented(), QuestionType.ui),
  Question('What is a WidgetsBindingObserver?', const NotYetImplemented(),
      QuestionType.ui),
  Question('Explain different types of navigation.', const NotYetImplemented(),
      QuestionType.ui),
  Question('Explain how abstraction works.', const NotYetImplemented(),
      QuestionType.dart),
  Question('How animations work?', const NotYetImplemented(), QuestionType.ui),
  Question('What architectural approaches are you familiar with?',
      const NotYetImplemented(), QuestionType.stateManagement),
  Question('How do you keep your persistent data?', const NotYetImplemented(),
      QuestionType.stateManagement),
  Question('Explain passing data between widgets and screens(routes).',
      const NotYetImplemented(), QuestionType.ui),
];
