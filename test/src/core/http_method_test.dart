// Copyright 2023 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:misskey/src/core/http_method.dart';
// 📦 Package imports:
import 'package:test/test.dart';

void main() {
  test('.name', () {
    expect(HttpMethod.post.name, 'post');
  });

  test('.value', () {
    expect(HttpMethod.post.value, 'POST');
  });

  group('.valueOf', () {
    test('when value is supported', () {
      expect(HttpMethod.valueOf('POST'), HttpMethod.post);
    });

    test('when value is not supported', () {
      expect(
          () => HttpMethod.valueOf('TEST'), throwsA(isA<UnsupportedError>()));
    });
  });
}
