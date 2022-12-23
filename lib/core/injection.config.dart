// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:serverless_chatbot/data/data_sources/audio_data_source.dart'
    as _i3;
import 'package:serverless_chatbot/data/data_sources/chatbot_data_source.dart'
    as _i5;
import 'package:serverless_chatbot/data/data_sources/google_auth_repository.dart'
    as _i6;
import 'package:serverless_chatbot/data/data_sources/record_data_source.dart'
    as _i8;
import 'package:serverless_chatbot/presentation/bloc/login/login_cubit.dart'
    as _i7;
import 'package:serverless_chatbot/presentation/pages/chat_page.dart/chat_page_cubit.dart'
    as _i9;
import 'package:serverless_chatbot/presentation/widgets/chat_audio_message_widget/chat_audio_message_cubit.dart'
    as _i4;

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
    gh.factory<_i3.AudioDataSource>(() => _i3.AudioDataSource());
    gh.factoryParam<_i4.ChatAudioMessageCubit, dynamic, dynamic>((
      audioBytes,
      _,
    ) =>
        _i4.ChatAudioMessageCubit(
          gh<_i3.AudioDataSource>(),
          audioBytes,
        ));
    gh.factory<_i5.ChatbotDataSource>(() => _i5.ChatbotDataSource());
    gh.factory<_i6.GoogleAuthRepository>(() => _i6.GoogleAuthRepository());
    gh.factory<_i7.LoginCubit>(
        () => _i7.LoginCubit(gh<_i6.GoogleAuthRepository>()));
    gh.factory<_i8.RecordDataSource>(() => _i8.RecordDataSource());
    gh.factoryParam<_i9.ChatPageCubit, dynamic, dynamic>((
      initialAccount,
      _,
    ) =>
        _i9.ChatPageCubit(
          gh<_i8.RecordDataSource>(),
          gh<_i6.GoogleAuthRepository>(),
          gh<_i5.ChatbotDataSource>(),
          initialAccount,
        ));
    return this;
  }
}
