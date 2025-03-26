import 'dart:convert';
import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/main/model/match.dart';
import 'package:kairatapp/main/model/matches.dart';

extension MainApi on ApiClient {
  Future<Matches?> getMatches() async {
    try {
      final result = await api.get(
        'fixtures',
        queryParams: {
          'include':
              'participants;league;venue;state;scores;events.type;events.period;events.player;statistics.type;sidelined.sideline.player;sidelined.sideline.type;weatherReport',
          'api_token':
              'dJVV3AvyvKEReTKIZ8TEwFslQLe29KI6T3ladc2K3onAZFUQWVARzcIXqzMI',
        },
      );

      if (result.statusCode == 200) {
        final jsonResponse = json.decode(result.body);

        final response = Matches.fromJson(jsonResponse);  

        print('response::: ${response.data.map((e) => e.toJson()).toList()}');
        
        return response;
      } else {
        print('Failed to load data: ${result.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}
