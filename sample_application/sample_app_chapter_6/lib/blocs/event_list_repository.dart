import 'package:sample_app_chapter_6/models/event.dart';

abstract class EventListRepository {
  Stream<List<Event>> fetch();
}
