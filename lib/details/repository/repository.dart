import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/details/api.dart';
import 'package:kairatapp/main/new_model/match_model.dart';

class DetailsRepository {

  Future<List<Event>?> getDetails(String id) async {
    return api.fetchEvents();
  }
}