import 'package:fiq/custom/link.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class ExplainAsyncAwaitFuture extends StatelessWidget {
  const ExplainAsyncAwaitFuture({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
            'When you’re new to Dart/Flutter this can get really confusing, but when you run few examples it does not look tricky anymore.\n'),
        const Text(
            'Async means that this function is asynchronous and you might need to wait a bit to get its result.\n'),
        const Text(
            "Future is a type that 'comes from the future' and returns value from your asynchronous function. It can complete with success(.then) or wit an error(.catchError).\n"),
        const Text(
            '.Then((value){…}) is a callback that’s called when future completes successfully(with a value).\n'),
        Text(
          'General guidelines for using the keywords:\n'.toUpperCase(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
        const Text(
            'When to use async? When you want to define an async method.\n'),
        const Text(
            'When to use await? When you need to wait there for the method to finish and then proceed with your code execution.\n'),
        const Text(
            'When to use then? When you want to process Future after it was successfully finished in an async way - program will continue execution after this async method was called, but .then() callback will be executed later.\n'),
        const Text(
            'When to use Future? When you want to get a result from an async function.\n'),
        const Text('Learn more from:'),
        Link('When to use async, await, then and Future in Dart?', () {
          launchInBrowser(
              'https://jelenaaa.medium.com/when-to-use-async-await-then-and-future-in-dart-5e00e64ab9b1');
        }),
        Link('Asynchronous programming', () {
          launchInBrowser('https://dart.dev/codelabs/async-await');
        }),
        Link('Async/Await - Flutter in Focus', () {
          launchInBrowser('https://www.youtube.com/watch?v=SmTCmDMi4BY');
        }),
      ],
    );
  }
}
