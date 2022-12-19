// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:serverless_chatbot/data/data_sources/chatbot_data_source.dart'
    as _i3;
import 'package:serverless_chatbot/data/data_sources/google_auth_repository.dart'
    as _i4;
import 'package:serverless_chatbot/data/data_sources/record_data_source.dart'
    as _i6;
import 'package:serverless_chatbot/presentation/bloc/login/login_cubit.dart'
    as _i5;
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page_cubit.dart'
    as _i7;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ChatbotDataSource>(() => _i3.ChatbotDataSource());
    gh.factory<_i4.GoogleAuthRepository>(() => _i4.GoogleAuthRepository());
    gh.factory<_i5.LoginCubit>(
        () => _i5.LoginCubit(gh<_i4.GoogleAuthRepository>()));
    gh.factory<_i6.RecordDataSource>(() => _i6.RecordDataSource());
    gh.factory<_i7.ChatPageCubit>(() => _i7.ChatPageCubit(
          gh<_i6.RecordDataSource>(),
          gh<_i4.GoogleAuthRepository>(),
          gh<_i3.ChatbotDataSource>(),
        ));
    return this;
  }
}
