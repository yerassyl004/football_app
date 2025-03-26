import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kairatapp/main/model/match.dart';
import 'package:kairatapp/main/model/match_events.dart';
import 'package:kairatapp/main/model/matches.dart';
import 'package:kairatapp/main/repository/main_repository.dart';

part 'main.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const MainEvent._();

  const factory MainEvent.initial() = InitialMainEvent;
  const factory MainEvent.loadData() = LoadMainEvent;
  const factory MainEvent.error(String? error) = ErrorMainEvent;
}

@freezed
class MainState with _$MainState {
  const MainState._();

  const factory MainState.initial() = InitialMainState;
  const factory MainState.loading() = LoadingMainState;
  const factory MainState.loaded(MainData data) = LoadedMainState;
  const factory MainState.error(String? error) = ErrorMainState;
}

@freezed
class MainData with _$MainData {
  const factory MainData({
    @Default([]) List<MatchData> matches,
    // @Default([]) List<Statistic> statistics,
    // @Default([]) List<Score> scores,
    // @Default([]) List<Team> teams,
  }) = _MainData;
}

class MainBloc extends Bloc<MainEvent, MainState> {
  final MainRepository _repository;

  MainBloc(this._repository) : super(const InitialMainState()) {
    on<InitialMainEvent>(_initial);
    on<LoadMainEvent>(_load);
  }

  Future<void> _initial(InitialMainEvent event, Emitter<MainState> emit) async {
    emit(LoadingMainState());
    add(MainEvent.loadData());
  }

  Future<void> _load(LoadMainEvent event, Emitter<MainState> emit) async {
    emit(MainState.loading());
    final matches = await _repository.getMatches();

    if (matches != null) {
      emit(LoadedMainState(MainData(matches: matches.data)));
    } else {
      print("Error matches");
    }
  }
}
