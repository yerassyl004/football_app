
import 'package:kairatapp/app/di.dart';
import 'package:kairatapp/main/bloc/main.dart';

extension MainDI on DI {
  MainBloc getMainBloc() {
    return MainBloc(getIt());
  }
}