import 'package:get_it/get_it.dart';
import 'package:kairatapp/main/api.dart';
import 'package:kairatapp/main/bloc/main.dart';
import 'package:kairatapp/main/repository/main_repository.dart';

/// one public instance of [DI] used across the app
final di = DI._internal();
GetIt getIt = GetIt.instance;

class DI {
  DI._internal();

  final GetIt getIt = GetIt.instance;

  /// initLocators() should be called in main
  void initLocators() {

    // getIt.registerLazySingleton<MainApi>(() => MainApi(baseUrl: ''));
    getIt.registerLazySingleton<MainRepository>(() => MainRepository());
    getIt.registerLazySingleton<MainBloc>(() => MainBloc(getIt()));
  }
}
