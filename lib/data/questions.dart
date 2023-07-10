import 'package:first_app/models/quiz_question.dart';

const questions = [
  QuizQuestion('What are the main building blocks of Flutter UIs?',
      ['Widgets', 'Components', 'Blocks', 'Functions']),
  QuizQuestion('What programming language is used in Flutter development?',
      ['JavaScript', 'Java', 'Dart', 'Python']),
  QuizQuestion('What is the widget tree in Flutter?', [
    'A data structure used to store widgets',
    'A visual representation of the UI hierarchy',
    'A file containing widget definitions',
    'A method to build widgets'
  ]),
  QuizQuestion('What is hot reload in Flutter?', [
    'The process of reloading the app when an error occurs',
    'A feature that allows developers to see code changes instantly',
    'The compilation of Flutter code',
    'A debugging tool'
  ]),
  QuizQuestion(
      'What is the main advantage of using Flutter for cross-platform development?',
      [
        'Faster app development',
        'Better performance than native apps',
        'Support for more platforms than other frameworks',
        'Easier integration with third-party libraries'
      ]),
];
