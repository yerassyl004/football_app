import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kairatapp/details/repository/repository.dart';
import 'package:kairatapp/main/new_model/match_model.dart';
import 'package:kairatapp/main/repository/main_repository.dart';
import 'package:permission_handler/permission_handler.dart';

part 'details.freezed.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const DetailsEvent._();

  const factory DetailsEvent.initial() = InitialDetailsEvent;
  const factory DetailsEvent.loadData(String id) = LoadDetailsEvent;
  const factory DetailsEvent.error(String? error) = ErrorDetailsEvent;
}

@freezed
class DetailsState with _$DetailsState {
  const DetailsState._();

  const factory DetailsState.initial() = InitialDetailsState;
  const factory DetailsState.loading() = LoadingDetailsState;
  const factory DetailsState.empty() = EmptyDetailsState;
  const factory DetailsState.loaded(DetailsData data) = LoadedDetailsState;
  const factory DetailsState.error(String? error) = ErrorDetailsState;
}

@freezed
class DetailsData with _$DetailsData {
  const factory DetailsData({
    @Default([]) List<Event> matches,
  }) = _DetailsData;
}

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsRepository _repository;

  DetailsBloc(this._repository) : super(const InitialDetailsState()) {
    on<InitialDetailsEvent>(_initial);
    on<LoadDetailsEvent>(_load);
  }

  Future<void> _initial(InitialDetailsEvent event, Emitter<DetailsState> emit) async {
    bool isGranted = await Permission.notification.isGranted;
    if (!isGranted) {
      await Permission.notification.request();
    }

    emit(LoadingDetailsState());
  }

  Future<void> _load(LoadDetailsEvent event, Emitter<DetailsState> emit) async {
    try {
      emit(DetailsState.loading());

      final matches = await _repository.getDetails(event.id);

      if (matches?.isEmpty ?? true) {
        emit(EmptyDetailsState());
        return;
      }

      emit(LoadedDetailsState(DetailsData(matches: matches ?? [])));
    } catch (e, stackTrace) {
      debugPrint("Error: $e\n$stackTrace");
      emit(ErrorDetailsState('Error: ${e.toString()}'));
    }
  }
}
