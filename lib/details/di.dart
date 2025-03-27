
import 'package:kairatapp/app/di.dart';
import 'package:kairatapp/details/bloc/details.dart';

extension DetailsDI on DI {
  DetailsBloc getDetailsBloc() {
    return DetailsBloc(getIt());
  }
}