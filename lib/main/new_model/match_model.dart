// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

FootballData footballDataFromJson(String str) => 
    FootballData.fromJson(json.decode(str));

class FootballData {
  final List<MatchModel> matches;

  FootballData({
    required this.matches,
  });

  factory FootballData.fromJson(Map<String, dynamic> json) {
    try {
      final response = json["response"] as List? ?? [];
      return FootballData(
        matches: response.map((x) => MatchModel.fromJson(x)).toList(),
      );
    } catch (e) {
      print('Error parsing FootballData: $e');
      return FootballData(matches: []);
    }
  }
}

class MatchModel {
  final Fixture fixture;
  final League league;
  final List<Team> teams;
  final Goals goals;
  final Score score;
  final List<Event> events;

  MatchModel({
    required this.fixture,
    required this.league,
    required this.teams,
    required this.goals,
    required this.score,
    required this.events,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    try {
      return MatchModel(
        fixture: Fixture.fromJson(json["fixture"] ?? {}),
        league: League.fromJson(json["league"] ?? {}),
        teams: [
          if (json["teams"]?["home"] != null) 
            Team.fromJson(json["teams"]["home"]),
          if (json["teams"]?["away"] != null) 
            Team.fromJson(json["teams"]["away"]),
        ],
        goals: Goals.fromJson(json["goals"] ?? {}),
        score: Score.fromJson(json["score"] ?? {}),
        events: (json["events"] as List?)?.map((x) => Event.fromJson(x)).toList() ?? [],
      );
    } catch (e) {
      print('Error parsing MatchModel: $e');
      return MatchModel(
        fixture: Fixture.empty(),
        league: League.empty(),
        teams: [],
        goals: Goals.empty(),
        score: Score.empty(),
        events: [],
      );
    }
  }

  Map<String, dynamic> toJson() => {
    "fixture": fixture.toJson(),
    "league": league.toJson(),
    "teams": teams.map((team) => team.toJson()).toList(),
    "goals": goals.toJson(),
    "score": score.toJson(),
    "events": events.map((event) => event.toJson()).toList(),
  };
}

class Fixture {
  final int id;
  final String? referee;
  final Timezone? timezone;
  final DateTime date;
  final int? timestamp;
  final Periods periods;
  final Venue venue;
  final Status status;

  Fixture({
    required this.id,
    this.referee,
    this.timezone,
    required this.date,
    this.timestamp,
    required this.periods,
    required this.venue,
    required this.status,
  });

  factory Fixture.fromJson(Map<String, dynamic> json) {
    return Fixture(
      id: json["id"] ?? 0,
      referee: json["referee"],
      timezone: json["timezone"] != null 
          ? timezoneValues.map[json["timezone"]] 
          : null,
      date: json["date"] != null 
          ? DateTime.parse(json["date"]) 
          : DateTime.now(),
      timestamp: json["timestamp"],
      periods: Periods.fromJson(json["periods"] ?? {}),
      venue: Venue.fromJson(json["venue"] ?? {}),
      status: Status.fromJson(json["status"] ?? {}),
    );
  }

  factory Fixture.empty() => Fixture(
    id: 0,
    date: DateTime.now(),
    periods: Periods.empty(),
    venue: Venue.empty(),
    status: Status.empty(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "referee": referee,
    "timezone": timezone != null 
        ? timezoneValues.reverse[timezone] 
        : null,
    "date": date.toIso8601String(),
    "timestamp": timestamp,
    "periods": periods.toJson(),
    "venue": venue.toJson(),
    "status": status.toJson(),
  };
}

class Periods {
  final int? first;
  final int? second;

  Periods({this.first, this.second});

  factory Periods.fromJson(Map<String, dynamic> json) => Periods(
    first: json["first"],
    second: json["second"],
  );

  factory Periods.empty() => Periods();

  Map<String, dynamic> toJson() => {
    "first": first,
    "second": second,
  };
}

class Status {
  final Long? long;
  final Short? short;
  final int? elapsed;
  final int? extra;

  Status({
    this.long,
    this.short,
    this.elapsed,
    this.extra,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    long: json["long"] != null 
        ? longValues.map[json["long"]] 
        : null,
    short: json["short"] != null 
        ? shortValues.map[json["short"]] 
        : null,
    elapsed: json["elapsed"],
    extra: json["extra"],
  );

  factory Status.empty() => Status();

  Map<String, dynamic> toJson() => {
    "long": long != null ? longValues.reverse[long] : null,
    "short": short != null ? shortValues.reverse[short] : null,
    "elapsed": elapsed,
    "extra": extra,
  };
}

enum Long { 
  FIRST_HALF, 
  HALFTIME, 
  SECOND_HALF,
  MATCH_FINISHED,
  MATCH_CANCELLED,
  MATCH_POSTPONED,
  NOT_STARTED,
  UNKNOWN
}

enum Short { 
  HT, 
  THE_1_H, 
  THE_2_H,
  FT,
  CANC,
  PST,
  NS,
  UNKNOWN
}

final longValues = EnumValues({
  "First Half": Long.FIRST_HALF,
  "Halftime": Long.HALFTIME,
  "Second Half": Long.SECOND_HALF,
  "Match Finished": Long.MATCH_FINISHED,
  "Match Cancelled": Long.MATCH_CANCELLED,
  "Match Postponed": Long.MATCH_POSTPONED,
  "Not Started": Long.NOT_STARTED,
});

final shortValues = EnumValues({
  "HT": Short.HT,
  "1H": Short.THE_1_H,
  "2H": Short.THE_2_H,
  "FT": Short.FT,
  "CANC": Short.CANC,
  "PST": Short.PST,
  "NS": Short.NS,
});

enum Timezone { UTC, UNKNOWN }

final timezoneValues = EnumValues({
  "UTC": Timezone.UTC,
});

class Venue {
  final int? id;
  final String? name;
  final String? city;

  Venue({this.id, this.name, this.city});

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    id: json["id"],
    name: json["name"],
    city: json["city"],
  );

  factory Venue.empty() => Venue();

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "city": city,
  };
}

class Team {
  final int id;
  final String name;
  final String logo;
  final bool? winner;

  Team({
    required this.id,
    required this.name,
    required this.logo,
    this.winner,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"] ?? 0,
    name: json["name"] ?? '',
    logo: json["logo"] ?? '',
    winner: json["winner"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "logo": logo,
    "winner": winner,
  };
}

class Goals {
  final int? home;
  final int? away;

  Goals({this.home, this.away});

  factory Goals.fromJson(Map<String, dynamic> json) => Goals(
    home: json["home"] is int ? json["home"] : null,
    away: json["away"] is int ? json["away"] : null,
  );

  factory Goals.empty() => Goals();

  Map<String, dynamic> toJson() => {
    "home": home,
    "away": away,
  };
}

class Score {
  final Goals halftime;
  final Goals fulltime;
  final Goals extratime;
  final Goals penalty;

  Score({
    required this.halftime,
    required this.fulltime,
    required this.extratime,
    required this.penalty,
  });

  factory Score.fromJson(Map<String, dynamic> json) => Score(
    halftime: Goals.fromJson(json["halftime"] ?? {}),
    fulltime: Goals.fromJson(json["fulltime"] ?? {}),
    extratime: Goals.fromJson(json["extratime"] ?? {}),
    penalty: Goals.fromJson(json["penalty"] ?? {}),
  );

  factory Score.empty() => Score(
    halftime: Goals.empty(),
    fulltime: Goals.empty(),
    extratime: Goals.empty(),
    penalty: Goals.empty(),
  );

  Map<String, dynamic> toJson() => {
    "halftime": halftime.toJson(),
    "fulltime": fulltime.toJson(),
    "extratime": extratime.toJson(),
    "penalty": penalty.toJson(),
  };
}

class League {
  final int id;
  final String name;
  final String country;
  final String logo;
  final String? flag;
  final int season;
  final String round;
  final bool? standings;

  League({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    this.flag,
    required this.season,
    required this.round,
    this.standings,
  });

  factory League.fromJson(Map<String, dynamic> json) => League(
    id: json["id"] ?? 0,
    name: json["name"] ?? '',
    country: json["country"] ?? '',
    logo: json["logo"] ?? '',
    flag: json["flag"],
    season: json["season"] ?? 0,
    round: json["round"] ?? '',
    standings: json["standings"],
  );

  factory League.empty() => League(
    id: 0,
    name: '',
    country: '',
    logo: '',
    season: 0,
    round: '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "country": country,
    "logo": logo,
    "flag": flag,
    "season": season,
    "round": round,
    "standings": standings,
  };
}

class Event {
  final Time time;
  final Team team;
  final Assist player;
  final Assist assist;
  final Type type;
  final Detail detail;
  final dynamic comments;

  Event({
    required this.time,
    required this.team,
    required this.player,
    required this.assist,
    required this.type,
    required this.detail,
    required this.comments,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    time: Time.fromJson(json["time"] ?? {}),
    team: Team.fromJson(json["team"] ?? {}),
    player: Assist.fromJson(json["player"] ?? {}),
    assist: Assist.fromJson(json["assist"] ?? {}),
    type: typeValues.map[json["type"]] ?? Type.UNKNOWN,
    detail: detailValues.map[json["detail"]] ?? Detail.UNKNOWN,
    comments: json["comments"],
  );

  Map<String, dynamic> toJson() => {
    "time": time.toJson(),
    "team": team.toJson(),
    "player": player.toJson(),
    "assist": assist.toJson(),
    "type": typeValues.reverse[type],
    "detail": detailValues.reverse[detail],
    "comments": comments,
  };
}

class Time {
  final int elapsed;
  final int? extra;

  Time({required this.elapsed, this.extra});

  factory Time.fromJson(Map<String, dynamic> json) => Time(
    elapsed: json["elapsed"] ?? 0,
    extra: json["extra"],
  );

  Map<String, dynamic> toJson() => {
    "elapsed": elapsed,
    "extra": extra,
  };
}

class Assist {
  final int? id;
  final String? name;

  Assist({this.id, this.name});

  factory Assist.fromJson(Map<String, dynamic> json) => Assist(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

enum Type { 
  CARD, 
  GOAL, 
  SUBST,
  UNKNOWN
}

enum Detail { 
  NORMAL_GOAL, 
  PENALTY, 
  SUBSTITUTION, 
  YELLOW_CARD,
  RED_CARD,
  UNKNOWN
}

final typeValues = EnumValues({
  "Card": Type.CARD,
  "Goal": Type.GOAL,
  "subst": Type.SUBST,
});

final detailValues = EnumValues({
  "Normal Goal": Detail.NORMAL_GOAL,
  "Penalty": Detail.PENALTY,
  "Substitution": Detail.SUBSTITUTION,
  "Yellow Card": Detail.YELLOW_CARD,
  "Red Card": Detail.RED_CARD,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}