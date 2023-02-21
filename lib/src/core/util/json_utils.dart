// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:convert';

// 📦 Package imports:
import 'package:http/http.dart';

// 🌎 Project imports:
import '../exception/misskey_exception.dart';

dynamic tryJsonDecode(
  final BaseResponse response,
  final String body,
) {
  try {
    return jsonDecode(body);
  } on FormatException {
    throw MisskeyException(
      'No body exists in response.',
      response,
    );
  }
}
