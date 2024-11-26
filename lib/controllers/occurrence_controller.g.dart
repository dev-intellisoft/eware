// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occurrence_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OccurrenceController on OccurrenceControllerBase, Store {
  late final _$saveOccurrenceAsyncAction =
      AsyncAction('OccurrenceControllerBase.saveOccurrence', context: context);

  @override
  Future<void> saveOccurrence(
      {String author = '(none)', String description = ''}) {
    return _$saveOccurrenceAsyncAction.run(
        () => super.saveOccurrence(author: author, description: description));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
