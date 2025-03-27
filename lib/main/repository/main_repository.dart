import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/main/api.dart';
import 'package:kairatapp/main/new_model/match_model.dart';

class MainRepository {
  Future<FootballData?> getMatches() async {
    final matchData = await api.fetchLiveFixtures();
    return matchData;
  }

  List<String> scoresList(List<MatchModel> matches) {
    return matches.map((match) {
      if (match.score.fulltime.away == null) {
        return '${match.score.halftime.home} : ${match.score.halftime.away}';
      } else {
        return '${match.score.fulltime.home} : ${match.score.fulltime.away}';
      }
    }).toList();
  }
}
