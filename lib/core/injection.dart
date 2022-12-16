import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: true)
void configureInjection() {
  getIt.init(); //changed to this
}
