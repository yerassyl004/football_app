import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/main/new_model/match_model.dart';

extension MainApi on ApiClient {
  Future<FootballData?> fetchLiveFixtures() async {
    try {
      final data = await api.get('fixtures', queryParams: {'date': '2025-03-26'});

      return FootballData.fromJson(data);
    } catch (e) {
      print('Error fetching: $e');
      return null; 
    }
  }
}
