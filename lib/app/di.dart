import 'package:get_it/get_it.dart';
import 'package:kairatapp/details/bloc/details.dart';
import 'package:kairatapp/details/repository/repository.dart';
import 'package:kairatapp/main/bloc/main.dart';
import 'package:kairatapp/main/repository/main_repository.dart';

final di = DI._internal();
GetIt getIt = GetIt.instance;

class DI {
  DI._internal();

  final GetIt getIt = GetIt.instance;

  void initLocators() {

    getIt.registerLazySingleton<MainRepository>(() => MainRepository());
    getIt.registerLazySingleton<DetailsRepository>(() => DetailsRepository());
    getIt.registerLazySingleton<MainBloc>(() => MainBloc(getIt()));
    getIt.registerLazySingleton<DetailsBloc>(() => DetailsBloc(getIt()));
  }
}
