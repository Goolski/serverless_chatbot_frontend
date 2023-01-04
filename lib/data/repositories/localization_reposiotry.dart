import 'package:injectable/injectable.dart';
import 'package:serverless_chatbot/data/data_sources/ip_localization_data_source.dart';

@injectable
class LocalizationRepository {
  final IpLocalizationDataSource _ipLocalizationDataSource;
  LocalizationRepository(this._ipLocalizationDataSource);

  Future<String> getLocation() async {
    return _ipLocalizationDataSource.getLocation();
  }
}
