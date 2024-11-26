import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:weather_app_modular/models/occurrence_model.dart';
part 'occurrence_controller.g.dart';

class OccurrenceController = OccurrenceControllerBase with _$OccurrenceController;

Box box = Hive.box<OccurrenceModel>('occurrences');
abstract class OccurrenceControllerBase with Store {
  @observable
  List<OccurrenceModel> occurrences = <OccurrenceModel>[];

  @action
  Future<void> saveOccurrence({String author = '(none)', String description = ''}) async{
    await box.add(OccurrenceModel(dateTime: DateTime.now(), description: description, author: author));
  }

}