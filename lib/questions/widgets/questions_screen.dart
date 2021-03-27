import 'dart:math';

import 'package:fiq/custom/link.dart';
import 'package:fiq/questions/data/list_of_questions.dart';
import 'package:fiq/questions/data/question.dart';
import 'package:fiq/utils.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key key}) : super(key: key);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  double leftPadding;
  final double screenPadding = 20;
  final Color parentTileColor = const Color(0xFFDDDDDD);
  final Color childTileColor = const Color(0xFFEEEEEE);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    leftPadding ??= MediaQuery.of(context).size.width / 16;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Column(
            children: const <Text>[
              Text(
                'Flutter Interview Questions',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              Text(
                'with answers',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  color: Colors.deepOrange.withOpacity(0.2),
                  child: Text(
                    'work in progress'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.blueGrey),
                  ),
                ),
                _getQuestionsList(),
                _wannaContribute(),
              ],
            ),
            _getDash(),
          ],
        ));
  }

  Container _wannaContribute() {
    return Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.withOpacity(0.1),
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: <Widget>[
          Link('How to prepare for the Flutter interview?', () {
            launchInBrowser(
                'https://jelenaaa.medium.com/how-to-prepare-for-the-flutter-interview-f6fc8a016035');
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Link(
                'Wanna contribute?',
                () {
                  launchInBrowser('https://github.com/jelenalecic/fiq');
                },
                weight: FontWeight.w600,
                color: Colors.blueGrey,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                child: const Text(
                  '😊',
                  style: TextStyle(height: 1, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Positioned _getDash() {
    return Positioned(
      right: -30,
      bottom: -30,
      child: IgnorePointer(
          child: Transform.rotate(
        angle: -30 * pi / 180,
        child: const SizedBox(
            width: 100,
            height: 100,
            child: Image(image: AssetImage('assets/images/dash.png'))),
      )),
    );
  }

  Widget _getQuestionsList() {
    return SafeArea(
      child: ListView.builder(
          shrinkWrap: true,
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) {
            //types of questions
            return ExpansionTile(
                backgroundColor: parentTileColor,
                collapsedBackgroundColor: Colors.white,
                key: PageStorageKey<String>('tile $index'),
                tilePadding: EdgeInsets.symmetric(horizontal: screenPadding),
                title: Text(
                  _getTypeName(QuestionType.values[index]),
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
                children:
                    //items in each question type
                    _getQuestionWidgetsByType(QuestionType.values[index]));
          },
          itemCount: QuestionType.values.length),
    );
  }

  String _getTypeName(QuestionType type) {
    switch (type) {
      case QuestionType.ui:
        return 'UI';
      case QuestionType.stateManagement:
        return 'State management';
      case QuestionType.general:
        return 'General';
      case QuestionType.dart:
        return 'Dart';
    }
    throw Exception();
  }

  List<Widget> _getQuestionWidgetsByType(QuestionType type) {
    final List<Question> itemsByType =
        questions.where((Question item) => item.type == type).toList();

    final List<Widget> widgets = <Widget>[];

    for (int i = 0; i < itemsByType.length; i++) {
      widgets.add(ExpansionTile(
        collapsedBackgroundColor: Colors.white,
        backgroundColor: childTileColor,
        key: PageStorageKey<String>(itemsByType[i].question),
        tilePadding: EdgeInsets.only(left: leftPadding, right: screenPadding),
        title: Text(
          itemsByType[i].question,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey.withOpacity(0.9),
          ),
        ),
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                left: leftPadding, right: screenPadding, bottom: 10, top: 10),
            child: itemsByType[i].answer,
          )
        ],
      ));
    }

    return widgets;
  }
}
