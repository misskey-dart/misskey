// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'core/config/retry_config.dart';
import 'service/accounts/accounts_service.dart';
import 'service/misskey_service.dart';

abstract class MisskeyApi {
  /// Returns the new instance of [MisskeyApi].
  factory MisskeyApi({
    required String instance,
    required String accessToken,
    Duration timeout = const Duration(seconds: 10),
    RetryConfig? retryConfig,
  }) =>
      _MisskeyApi(
        instance: instance,
        accessToken: accessToken,
        timeout: timeout,
        retryConfig: retryConfig,
      );

  /// Returns the accounts service.
  AccountsService get accounts;
}

class _MisskeyApi implements MisskeyApi {
  /// Returns the new instance of [_MisskeyApi].
  _MisskeyApi({
    required String instance,
    required String accessToken,
    required Duration timeout,
    RetryConfig? retryConfig,
  }) : _service = MisskeyService(
          instance: instance,
          accessToken: accessToken,
          timeout: timeout,
          retryConfig: retryConfig,
        );

  final MisskeyService _service;

  @override
  AccountsService get accounts => _service.accounts;
}
