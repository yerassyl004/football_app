import 'dart:convert';

import 'package:kairatapp/main/model/match.dart';

Matches responseFromJson(String str) => Matches.fromJson(json.decode(str));

String responseToJson(Matches data) => json.encode(data.toJson());

class Matches {
  final List<MatchData> data;

  Matches({
    required this.data,
  });

  factory Matches.fromJson(Map<String, dynamic> json) => Matches(
        data: (json["data"] as List)
            .map((item) => MatchData.fromJson(item))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        "data": data.map((match) => match.toJson()).toList(),
      };
}


class MatchPeriod {
    int id;
    int fixtureId;
    int typeId;
    int started;
    int ended;
    int countsFrom;
    bool ticking;
    int sortOrder;
    PeriodDescription description;
    int timeAdded;
    int periodLength;
    int minutes;
    int seconds;
    bool hasTimer;

    MatchPeriod({
        required this.id,
        required this.fixtureId,
        required this.typeId,
        required this.started,
        required this.ended,
        required this.countsFrom,
        required this.ticking,
        required this.sortOrder,
        required this.description,
        required this.timeAdded,
        required this.periodLength,
        required this.minutes,
        required this.seconds,
        required this.hasTimer,
    });

    factory MatchPeriod.fromJson(Map<String, dynamic> json) => MatchPeriod(
        id: json["id"],
        fixtureId: json["fixture_id"],
        typeId: json["type_id"],
        started: json["started"],
        ended: json["ended"],
        countsFrom: json["counts_from"],
        ticking: json["ticking"],
        sortOrder: json["sort_order"],
        description: periodDescriptionValues.map[json["description"]]!,
        timeAdded: json["time_added"],
        periodLength: json["period_length"],
        minutes: json["minutes"],
        seconds: json["seconds"],
        hasTimer: json["has_timer"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "type_id": typeId,
        "started": started,
        "ended": ended,
        "counts_from": countsFrom,
        "ticking": ticking,
        "sort_order": sortOrder,
        "description": periodDescriptionValues.reverse[description],
        "time_added": timeAdded,
        "period_length": periodLength,
        "minutes": minutes,
        "seconds": seconds,
        "has_timer": hasTimer,
    };
}

enum PeriodDescription {
    FIRST_HALF,
    SECOND_HALF
}

final periodDescriptionValues = EnumValues({
    "1st-half": PeriodDescription.FIRST_HALF,
    "2nd-half": PeriodDescription.SECOND_HALF
});

class Player {
    int id;
    int sportId;
    int countryId;
    int nationalityId;
    int? cityId;
    int positionId;
    int? detailedPositionId;
    int? typeId;
    String commonName;
    String firstname;
    String lastname;
    String name;
    String displayName;
    String imagePath;
    int height;
    int? weight;
    DateTime dateOfBirth;
    Gender? gender;

    Player({
        required this.id,
        required this.sportId,
        required this.countryId,
        required this.nationalityId,
        required this.cityId,
        required this.positionId,
        required this.detailedPositionId,
        required this.typeId,
        required this.commonName,
        required this.firstname,
        required this.lastname,
        required this.name,
        required this.displayName,
        required this.imagePath,
        required this.height,
        required this.weight,
        required this.dateOfBirth,
        required this.gender,
    });

    factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json["id"],
        sportId: json["sport_id"],
        countryId: json["country_id"],
        nationalityId: json["nationality_id"],
        cityId: json["city_id"],
        positionId: json["position_id"],
        detailedPositionId: json["detailed_position_id"],
        typeId: json["type_id"],
        commonName: json["common_name"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        name: json["name"],
        displayName: json["display_name"],
        imagePath: json["image_path"],
        height: json["height"],
        weight: json["weight"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        gender: genderValues.map[json["gender"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sport_id": sportId,
        "country_id": countryId,
        "nationality_id": nationalityId,
        "city_id": cityId,
        "position_id": positionId,
        "detailed_position_id": detailedPositionId,
        "type_id": typeId,
        "common_name": commonName,
        "firstname": firstname,
        "lastname": lastname,
        "name": name,
        "display_name": displayName,
        "image_path": imagePath,
        "height": height,
        "weight": weight,
        "date_of_birth": "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "gender": genderValues.reverse[gender],
    };
}

enum Gender {
    MALE
}

final genderValues = EnumValues({
    "male": Gender.MALE
});

enum EventSection {
    EVENT,
    INJURY_SUSPENSION,
    STATISTIC
}

final eventSectionValues = EnumValues({
    "event": EventSection.EVENT,
    "injury_suspension": EventSection.INJURY_SUSPENSION,
    "statistic": EventSection.STATISTIC
});

class EventType {
    int id;
    String name;
    String code;
    String developerName;
    EventSection modelType;
    StatGroup? statGroup;

    EventType({
        required this.id,
        required this.name,
        required this.code,
        required this.developerName,
        required this.modelType,
        required this.statGroup,
    });

    factory EventType.fromJson(Map<String, dynamic> json) => EventType(
        id: json["id"],
        name: json["name"],
        code: json["code"],
        developerName: json["developer_name"],
        modelType: eventSectionValues.map[json["model_type"]]!,
        statGroup: statGroupValues.map[json["stat_group"]]!,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "code": code,
        "developer_name": developerName,
        "model_type": eventSectionValues.reverse[modelType],
        "stat_group": statGroupValues.reverse[statGroup],
    };
}

enum StatGroup {
    DEFENSIVE,
    OFFENSIVE,
    OVERALL
}

final statGroupValues = EnumValues({
    "defensive": StatGroup.DEFENSIVE,
    "offensive": StatGroup.OFFENSIVE,
    "overall": StatGroup.OVERALL
});

class League {
    int id;
    int sportId;
    int countryId;
    String name;
    bool active;
    String shortCode;
    String imagePath;
    String type;
    String subType;
    DateTime lastPlayedAt;
    int category;
    bool hasJerseys;

    League({
        required this.id,
        required this.sportId,
        required this.countryId,
        required this.name,
        required this.active,
        required this.shortCode,
        required this.imagePath,
        required this.type,
        required this.subType,
        required this.lastPlayedAt,
        required this.category,
        required this.hasJerseys,
    });

    factory League.fromJson(Map<String, dynamic> json) => League(
        id: json["id"],
        sportId: json["sport_id"],
        countryId: json["country_id"],
        name: json["name"],
        active: json["active"],
        shortCode: json["short_code"],
        imagePath: json["image_path"],
        type: json["type"],
        subType: json["sub_type"],
        lastPlayedAt: DateTime.parse(json["last_played_at"]),
        category: json["category"],
        hasJerseys: json["has_jerseys"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "sport_id": sportId,
        "country_id": countryId,
        "name": name,
        "active": active,
        "short_code": shortCode,
        "image_path": imagePath,
        "type": type,
        "sub_type": subType,
        "last_played_at": lastPlayedAt.toIso8601String(),
        "category": category,
        "has_jerseys": hasJerseys,
    };
}

class Team {
  final int id;
  final String name;
  final String imagePath;

  Team({
    required this.id,
    required this.name,
    required this.imagePath,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_path": imagePath,
      };
}

class TeamMeta {
    Location location;
    bool winner;
    int position;

    TeamMeta({
        required this.location,
        required this.winner,
        required this.position,
    });

    factory TeamMeta.fromJson(Map<String, dynamic> json) => TeamMeta(
        location: locationValues.map[json["location"]]!,
        winner: json["winner"],
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "location": locationValues.reverse[location],
        "winner": winner,
        "position": position,
    };
}

enum Location {
    AWAY,
    HOME
}

final locationValues = EnumValues({
    "away": Location.AWAY,
    "home": Location.HOME
});

class Score {
    int id;
    int fixtureId;
    int typeId;
    int participantId;
    ScoreDetails score;
    String description;

    Score({
        required this.id,
        required this.fixtureId,
        required this.typeId,
        required this.participantId,
        required this.score,
        required this.description,
    });

    factory Score.fromJson(Map<String, dynamic> json) => Score(
        id: json["id"],
        fixtureId: json["fixture_id"],
        typeId: json["type_id"],
        participantId: json["participant_id"],
        score: ScoreDetails.fromJson(json["score"]),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "type_id": typeId,
        "participant_id": participantId,
        "score": score.toJson(),
        "description": description,
    };
}

class ScoreDetails {
    int goals;
    Location participant;

    ScoreDetails({
        required this.goals,
        required this.participant,
    });

    factory ScoreDetails.fromJson(Map<String, dynamic> json) => ScoreDetails(
        goals: json["goals"],
        participant: locationValues.map[json["participant"]]!,
    );

    Map<String, dynamic> toJson() => {
        "goals": goals,
        "participant": locationValues.reverse[participant],
    };
}

class SidelinedPlayer {
    int id;
    int fixtureId;
    int sidelineId;
    int participantId;
    Sideline sideline;

    SidelinedPlayer({
        required this.id,
        required this.fixtureId,
        required this.sidelineId,
        required this.participantId,
        required this.sideline,
    });

    factory SidelinedPlayer.fromJson(Map<String, dynamic> json) => SidelinedPlayer(
        id: json["id"],
        fixtureId: json["fixture_id"],
        sidelineId: json["sideline_id"],
        participantId: json["participant_id"],
        sideline: Sideline.fromJson(json["sideline"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "sideline_id": sidelineId,
        "participant_id": participantId,
        "sideline": sideline.toJson(),
    };
}

class Sideline {
    int id;
    int playerId;
    int typeId;
    SidelineCategory category;
    int teamId;
    dynamic seasonId;
    DateTime startDate;
    DateTime? endDate;
    int gamesMissed;
    bool completed;
    Player player;
    EventType type;

    Sideline({
        required this.id,
        required this.playerId,
        required this.typeId,
        required this.category,
        required this.teamId,
        required this.seasonId,
        required this.startDate,
        required this.endDate,
        required this.gamesMissed,
        required this.completed,
        required this.player,
        required this.type,
    });

    factory Sideline.fromJson(Map<String, dynamic> json) => Sideline(
        id: json["id"],
        playerId: json["player_id"],
        typeId: json["type_id"],
        category: sidelineCategoryValues.map[json["category"]]!,
        teamId: json["team_id"],
        seasonId: json["season_id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        gamesMissed: json["games_missed"],
        completed: json["completed"],
        player: Player.fromJson(json["player"]),
        type: EventType.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "player_id": playerId,
        "type_id": typeId,
        "category": sidelineCategoryValues.reverse[category],
        "team_id": teamId,
        "season_id": seasonId,
        "start_date": "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "games_missed": gamesMissed,
        "completed": completed,
        "player": player.toJson(),
        "type": type.toJson(),
    };
}

enum SidelineCategory {
    INJURY,
    SUSPENDED
}

final sidelineCategoryValues = EnumValues({
    "injury": SidelineCategory.INJURY,
    "suspended": SidelineCategory.SUSPENDED
});

class MatchState {
  final String state;
  final String name;

  MatchState({
    required this.state,
    required this.name,
  });

  factory MatchState.fromJson(Map<String, dynamic> json) => MatchState(
        state: json["state"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "name": name,
      };
}

class Statistic {
    int id;
    int fixtureId;
    int typeId;
    int participantId;
    StatisticData data;
    Location location;
    EventType type;

    Statistic({
        required this.id,
        required this.fixtureId,
        required this.typeId,
        required this.participantId,
        required this.data,
        required this.location,
        required this.type,
    });

    factory Statistic.fromJson(Map<String, dynamic> json) => Statistic(
        id: json["id"],
        fixtureId: json["fixture_id"],
        typeId: json["type_id"],
        participantId: json["participant_id"],
        data: StatisticData.fromJson(json["data"]),
        location: locationValues.map[json["location"]]!,
        type: EventType.fromJson(json["type"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "type_id": typeId,
        "participant_id": participantId,
        "data": data.toJson(),
        "location": locationValues.reverse[location],
        "type": type.toJson(),
    };
}

class StatisticData {
    int value;

    StatisticData({
        required this.value,
    });

    factory StatisticData.fromJson(Map<String, dynamic> json) => StatisticData(
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
    };
}

class Venue {
  final String name;
  final String cityName;

  Venue({
    required this.name,
    required this.cityName,
  });

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
        name: json["name"],
        cityName: json["city_name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "city_name": cityName,
      };
}

class WeatherReport {
    int id;
    int fixtureId;
    int venueId;
    Temperature temperature;
    Temperature feelsLike;
    Wind wind;
    String humidity;
    int pressure;
    String clouds;
    String description;
    String icon;
    String type;
    String metric;
    CurrentWeather current;

    WeatherReport({
        required this.id,
        required this.fixtureId,
        required this.venueId,
        required this.temperature,
        required this.feelsLike,
        required this.wind,
        required this.humidity,
        required this.pressure,
        required this.clouds,
        required this.description,
        required this.icon,
        required this.type,
        required this.metric,
        required this.current,
    });

    factory WeatherReport.fromJson(Map<String, dynamic> json) => WeatherReport(
        id: json["id"],
        fixtureId: json["fixture_id"],
        venueId: json["venue_id"],
        temperature: Temperature.fromJson(json["temperature"]),
        feelsLike: Temperature.fromJson(json["feels_like"]),
        wind: Wind.fromJson(json["wind"]),
        humidity: json["humidity"],
        pressure: json["pressure"],
        clouds: json["clouds"],
        description: json["description"],
        icon: json["icon"],
        type: json["type"],
        metric: json["metric"],
        current: CurrentWeather.fromJson(json["current"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "venue_id": venueId,
        "temperature": temperature.toJson(),
        "feels_like": feelsLike.toJson(),
        "wind": wind.toJson(),
        "humidity": humidity,
        "pressure": pressure,
        "clouds": clouds,
        "description": description,
        "icon": icon,
        "type": type,
        "metric": metric,
        "current": current.toJson(),
    };
}

class CurrentWeather {
    double temp;
    double wind;
    String clouds;
    String humidity;
    int pressure;
    int direction;
    double feelsLike;
    String description;

    CurrentWeather({
        required this.temp,
        required this.wind,
        required this.clouds,
        required this.humidity,
        required this.pressure,
        required this.direction,
        required this.feelsLike,
        required this.description,
    });

    factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
        temp: json["temp"]?.toDouble(),
        wind: json["wind"]?.toDouble(),
        clouds: json["clouds"],
        humidity: json["humidity"],
        pressure: json["pressure"],
        direction: json["direction"],
        feelsLike: json["feels_like"]?.toDouble(),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "temp": temp,
        "wind": wind,
        "clouds": clouds,
        "humidity": humidity,
        "pressure": pressure,
        "direction": direction,
        "feels_like": feelsLike,
        "description": description,
    };
}

class Temperature {
    double day;
    double morning;
    double evening;
    double night;

    Temperature({
        required this.day,
        required this.morning,
        required this.evening,
        required this.night,
    });

    factory Temperature.fromJson(Map<String, dynamic> json) => Temperature(
        day: json["day"]?.toDouble(),
        morning: json["morning"]?.toDouble(),
        evening: json["evening"]?.toDouble(),
        night: json["night"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "morning": morning,
        "evening": evening,
        "night": night,
    };
}

class Wind {
    double speed;
    int direction;

    Wind({
        required this.speed,
        required this.direction,
    });

    factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        direction: json["direction"],
    );

    Map<String, dynamic> toJson() => {
        "speed": speed,
        "direction": direction,
    };
}

class RateLimit {
    int resetsInSeconds;
    int remaining;
    String requestedEntity;

    RateLimit({
        required this.resetsInSeconds,
        required this.remaining,
        required this.requestedEntity,
    });

    factory RateLimit.fromJson(Map<String, dynamic> json) => RateLimit(
        resetsInSeconds: json["resets_in_seconds"],
        remaining: json["remaining"],
        requestedEntity: json["requested_entity"],
    );

    Map<String, dynamic> toJson() => {
        "resets_in_seconds": resetsInSeconds,
        "remaining": remaining,
        "requested_entity": requestedEntity,
    };
}

class Match {
    SubscriptionMeta meta;
    List<SubscriptionPlan> plans;
    List<SubscriptionAddOn> addOns;
    List<dynamic> widgets;

    Match({
        required this.meta,
        required this.plans,
        required this.addOns,
        required this.widgets,
    });

    factory Match.fromJson(Map<String, dynamic> json) => Match(
        meta: SubscriptionMeta.fromJson(json["meta"]),
        plans: List<SubscriptionPlan>.from(json["plans"].map((x) => SubscriptionPlan.fromJson(x))),
        addOns: List<SubscriptionAddOn>.from(json["add_ons"].map((x) => SubscriptionAddOn.fromJson(x))),
        widgets: List<dynamic>.from(json["widgets"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "plans": List<dynamic>.from(plans.map((x) => x.toJson())),
        "add_ons": List<dynamic>.from(addOns.map((x) => x.toJson())),
        "widgets": List<dynamic>.from(widgets.map((x) => x)),
    };
}

class SubscriptionAddOn {
    String addOn;
    String sport;
    String category;

    SubscriptionAddOn({
        required this.addOn,
        required this.sport,
        required this.category,
    });

    factory SubscriptionAddOn.fromJson(Map<String, dynamic> json) => SubscriptionAddOn(
        addOn: json["add_on"],
        sport: json["sport"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "add_on": addOn,
        "sport": sport,
        "category": category,
    };
}

class SubscriptionMeta {
    DateTime trialEndsAt;
    DateTime endsAt;
    int currentTimestamp;

    SubscriptionMeta({
        required this.trialEndsAt,
        required this.endsAt,
        required this.currentTimestamp,
    });

    factory SubscriptionMeta.fromJson(Map<String, dynamic> json) => SubscriptionMeta(
        trialEndsAt: DateTime.parse(json["trial_ends_at"]),
        endsAt: DateTime.parse(json["ends_at"]),
        currentTimestamp: json["current_timestamp"],
    );

    Map<String, dynamic> toJson() => {
        "trial_ends_at": trialEndsAt.toIso8601String(),
        "ends_at": endsAt.toIso8601String(),
        "current_timestamp": currentTimestamp,
    };
}

class SubscriptionPlan {
    String plan;
    String sport;
    String category;

    SubscriptionPlan({
        required this.plan,
        required this.sport,
        required this.category,
    });

    factory SubscriptionPlan.fromJson(Map<String, dynamic> json) => SubscriptionPlan(
        plan: json["plan"],
        sport: json["sport"],
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "plan": plan,
        "sport": sport,
        "category": category,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}