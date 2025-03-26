import 'package:kairatapp/main/model/matches.dart';

class MatchData {
  final int id;
  final String name;
  final DateTime startingAt;
  final List<Team> participants;
  final League league;
  final Venue venue;
  final MatchState state;

  MatchData({
    required this.id,
    required this.name,
    required this.startingAt,
    required this.participants,
    required this.venue,
    required this.state,
    required this.league
  });

  factory MatchData.fromJson(Map<String, dynamic> json) => MatchData(
        id: json["id"],
        name: json["name"],
        startingAt: DateTime.parse(json["starting_at"]),
        participants: List<Team>.from(
            json["participants"].map((x) => Team.fromJson(x))),
        venue: Venue.fromJson(json["venue"]),
        state: MatchState.fromJson(json["state"]),
        league: League.fromJson(json["league"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "starting_at": startingAt.toIso8601String(),
        "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
        "venue": venue.toJson(),
        "state": state.toJson(),
      };
}