// Mocks generated by Mockito 5.0.14 from annotations
// in ubuntu_desktop_installer/test/select_guided_storage_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:ui' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:ubuntu_desktop_installer/pages/select_guided_storage/select_guided_storage_model.dart'
    as _i2;
import 'package:ubuntu_desktop_installer/services.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [SelectGuidedStorageModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockSelectGuidedStorageModel extends _i1.Mock
    implements _i2.SelectGuidedStorageModel {
  MockSelectGuidedStorageModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i3.Disk> get storages => (super
          .noSuchMethod(Invocation.getter(#storages), returnValue: <_i3.Disk>[])
      as List<_i3.Disk>);
  @override
  int get selectedIndex =>
      (super.noSuchMethod(Invocation.getter(#selectedIndex), returnValue: 0)
          as int);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  void selectStorage(int? index) =>
      super.noSuchMethod(Invocation.method(#selectStorage, [index]),
          returnValueForMissingStub: null);
  @override
  _i4.Future<void> loadGuidedStorage() =>
      (super.noSuchMethod(Invocation.method(#loadGuidedStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> saveGuidedStorage() =>
      (super.noSuchMethod(Invocation.method(#saveGuidedStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.Future<void> resetGuidedStorage() =>
      (super.noSuchMethod(Invocation.method(#resetGuidedStorage, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  void addListener(_i5.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i5.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}