import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'navigation_services.dart';

GetIt locator = GetIt.instance;

class SimpleLogPrinter extends LogPrinter {
  final String className;
  SimpleLogPrinter(this.className);
  @override
  List<String> log(LogEvent event) {
    return [event.message];
  }
}

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}

void setupLocator() {
  locator.registerLazySingleton(() => NavigationServices());
}
