import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class IpLocalizationDataSource {
  static const String _apiPath = 'ip-api.com';

  Future<String> getLocation() async {
    final url = Uri.http(
      _apiPath,
      '/json',
    );
    final response = await http.get(url);
    final decodedBody = jsonDecode(response.body);
    final localization = decodedBody['city'];
    return localization;
  }
}
