// Mocks generated by Mockito 5.4.0 from annotations
// in ubuntu_desktop_installer/test/filesystem/select_guided_storage/test_select_guided_storage.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:subiquity_client/subiquity_client.dart' as _i3;
import 'package:ubuntu_desktop_installer/pages/filesystem/select_guided_storage/select_guided_storage_model.dart'
    as _i2;

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

/// A class which mocks [SelectGuidedStorageModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockSelectGuidedStorageModel extends _i1.Mock
    implements _i2.SelectGuidedStorageModel {
  MockSelectGuidedStorageModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get isDone => (super.noSuchMethod(
        Invocation.getter(#isDone),
        returnValue: false,
      ) as bool);
  @override
  List<_i3.GuidedStorageTarget> get storages => (super.noSuchMethod(
        Invocation.getter(#storages),
        returnValue: <_i3.GuidedStorageTarget>[],
      ) as List<_i3.GuidedStorageTarget>);
  @override
  int get selectedIndex => (super.noSuchMethod(
        Invocation.getter(#selectedIndex),
        returnValue: 0,
      ) as int);
  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);
  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);
  @override
  _i3.GuidedStorageTargetReformat? getStorage(int? index) =>
      (super.noSuchMethod(Invocation.method(
        #getStorage,
        [index],
      )) as _i3.GuidedStorageTargetReformat?);
  @override
  _i3.Disk? getDisk(int? index) => (super.noSuchMethod(Invocation.method(
        #getDisk,
        [index],
      )) as _i3.Disk?);
  @override
  void selectStorage(int? index) => super.noSuchMethod(
        Invocation.method(
          #selectStorage,
          [index],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> loadGuidedStorage() => (super.noSuchMethod(
        Invocation.method(
          #loadGuidedStorage,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> saveGuidedStorage() => (super.noSuchMethod(
        Invocation.method(
          #saveGuidedStorage,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<void> resetGuidedStorage() => (super.noSuchMethod(
        Invocation.method(
          #resetGuidedStorage,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  void addListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void removeListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}