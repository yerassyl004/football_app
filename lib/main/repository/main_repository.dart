import 'package:kairatapp/app/api/api.dart';
import 'package:kairatapp/main/api.dart';
import 'package:kairatapp/main/model/match.dart';
import 'package:kairatapp/main/model/matches.dart';

class MainRepository {
  // final MainApi _api;

  // MainRepository(this._api);

  Future<Matches?> getMatches() async {
    final matchData = await api.getMatches();

    return matchData;
  }
}