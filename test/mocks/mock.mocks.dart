// Mocks generated by Mockito 5.3.2 from annotations
// in misskey/test/mock/mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// 🎯 Dart imports:
import 'dart:async' as _i4;

// 📦 Package imports:
import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// 🌎 Project imports:
import 'package:misskey/src/core/client/client.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i3.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Response> post(
    Uri? uri, {
    Map<String, String>? headers = const {},
    dynamic body,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [uri],
          {
            #headers: headers,
            #body: body,
          },
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #post,
            [uri],
            {
              #headers: headers,
              #body: body,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response>);
}