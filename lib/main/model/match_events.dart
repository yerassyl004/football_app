import 'package:kairatapp/main/model/matches.dart';

class MatchEvent {
    int id;
    int fixtureId;
    int periodId;
    int participantId;
    int typeId;
    EventSection section;
    int playerId;
    int? relatedPlayerId;
    String playerName;
    String? relatedPlayerName;
    String? result;
    String? info;
    String addition;
    int minute;
    int? extraMinute;
    dynamic injured;
    bool onBench;
    dynamic coachId;
    int? subTypeId;
    int detailedPeriodId;
    int sortOrder;
    EventType type;
    MatchPeriod period;
    Player player;

    MatchEvent({
        required this.id,
        required this.fixtureId,
        required this.periodId,
        required this.participantId,
        required this.typeId,
        required this.section,
        required this.playerId,
        required this.relatedPlayerId,
        required this.playerName,
        required this.relatedPlayerName,
        required this.result,
        required this.info,
        required this.addition,
        required this.minute,
        required this.extraMinute,
        required this.injured,
        required this.onBench,
        required this.coachId,
        required this.subTypeId,
        required this.detailedPeriodId,
        required this.sortOrder,
        required this.type,
        required this.period,
        required this.player,
    });

    factory MatchEvent.fromJson(Map<String, dynamic> json) => MatchEvent(
        id: json["id"],
        fixtureId: json["fixture_id"],
        periodId: json["period_id"],
        participantId: json["participant_id"],
        typeId: json["type_id"],
        section: eventSectionValues.map[json["section"]]!,
        playerId: json["player_id"],
        relatedPlayerId: json["related_player_id"],
        playerName: json["player_name"],
        relatedPlayerName: json["related_player_name"],
        result: json["result"],
        info: json["info"],
        addition: json["addition"],
        minute: json["minute"],
        extraMinute: json["extra_minute"],
        injured: json["injured"],
        onBench: json["on_bench"],
        coachId: json["coach_id"],
        subTypeId: json["sub_type_id"],
        detailedPeriodId: json["detailed_period_id"],
        sortOrder: json["sort_order"],
        type: EventType.fromJson(json["type"]),
        period: MatchPeriod.fromJson(json["period"]),
        player: Player.fromJson(json["player"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fixture_id": fixtureId,
        "period_id": periodId,
        "participant_id": participantId,
        "type_id": typeId,
        "section": eventSectionValues.reverse[section],
        "player_id": playerId,
        "related_player_id": relatedPlayerId,
        "player_name": playerName,
        "related_player_name": relatedPlayerName,
        "result": result,
        "info": info,
        "addition": addition,
        "minute": minute,
        "extra_minute": extraMinute,
        "injured": injured,
        "on_bench": onBench,
        "coach_id": coachId,
        "sub_type_id": subTypeId,
        "detailed_period_id": detailedPeriodId,
        "sort_order": sortOrder,
        "type": type.toJson(),
        "period": period.toJson(),
        "player": player.toJson(),
    };
}
