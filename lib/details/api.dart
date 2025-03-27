import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/main/new_model/match_model.dart';

extension DetailsApi on ApiClient {
  Future<List<Event>?> fetchEvents() async {
    try {
      final data = await api.get('fixtures/events', queryParams: {'fixture': '1100300'});

      return data['response'].map<Event>((event) => Event.fromJson(event)).toList();
    } catch (e) {
      print('Error fetching: $e');
      return null; 
    }
  }
}
