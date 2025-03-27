import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kairatapp/main/new_model/match_model.dart';
import 'package:kairatapp/main/repository/main_repository.dart';
import 'package:permission_handler/permission_handler.dart';

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
  const factory MainState.empty() = EmptyMainState;
  const factory MainState.loaded(MainData data) = LoadedMainState;
  const factory MainState.error(String? error) = ErrorMainState;
}

@freezed
class MainData with _$MainData {
  const factory MainData({
    @Default([]) List<MatchModel> matches,
    @Default([]) List<String> scores,
  }) = _MainData;
}

class MainBloc extends Bloc<MainEvent, MainState> {
  final MainRepository _repository;

  MainBloc(this._repository) : super(const InitialMainState()) {
    on<InitialMainEvent>(_initial);
    on<LoadMainEvent>(_load);
  }

  Future<void> _initial(InitialMainEvent event, Emitter<MainState> emit) async {
    bool isGranted = await Permission.notification.isGranted;
    if (isGranted) {
    } else {
      await Permission.notification.request();
    }
    emit(LoadingMainState());
    add(MainEvent.loadData());
  }

  Future<void> _load(LoadMainEvent event, Emitter<MainState> emit) async {
    try {
      emit(MainState.loading());

      final matches = await _repository.getMatches();

      if (matches?.matches.isEmpty ?? true) {
        emit(EmptyMainState());
        return;
      }

      final scores = _repository.scoresList(matches!.matches);
      emit(LoadedMainState(MainData(matches: matches.matches, scores: scores)));
    } catch (e) {
      emit(ErrorMainState('Error: ${e.toString()}'));
    }
  }
}
