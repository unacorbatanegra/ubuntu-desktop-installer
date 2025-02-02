import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'widget_testers.dart';

/// Waits until the specified file has been written on the disk, as in, it
/// exists and is not empty.
Future<void> waitForFile(
  String fileName, [
  Duration limit = const Duration(seconds: 10),
]) async {
  assert(limit.inMilliseconds >= 250);
  const delay = Duration(milliseconds: 250);

  await Future.doWhile(() {
    return Future.delayed(delay).then((_) {
      final file = File(fileName);
      return !file.existsSync() || file.statSync().size <= 0;
    });
  }).timeout(
    limit,
    onTimeout: () => debugPrint(
        '\nWARNING: A call to waitForFile() with file "$fileName" did not complete within the specified time limit $limit.\n${StackTrace.current}'),
  );

  expect(File(fileName).existsSync(), isTrue);
}

/// Verifies that the given file matches a golden file.
///
/// NOTE: Use `flutter test --update-goldens` to update golden files.
Future<void> verifyGoldenFile(String fileName, String goldenName) async {
  await waitForFile(fileName);

  // https://api.flutter.dev/flutter/flutter_test/autoUpdateGoldenFiles.html
  if (autoUpdateGoldenFiles) {
    File(fileName).copySync(goldenName);
  }

  expect(
    File(fileName).readAsStringSync().trim(),
    equals(File(goldenName).readAsStringSync().trim()),
    reason: '$fileName does not match $goldenName',
  );
}

/// Helpers for interacting with widgets.
extension IntegrationTester on WidgetTester {
  /// Taps a "Previous" button.
  Future<void> tapPrevious() => tapButton(ulang.previousLabel);

  /// Taps a "Next" button.
  Future<void> tapNext() => tapButton(ulang.nextLabel);

  /// Pumps until the specified [finder] is satisfied. This can be used to wait
  /// until a certain page or widget becomes visible.
  Future<void> pumpUntil(
    Finder finder, [
    Duration timeout = const Duration(seconds: 10),
  ]) async {
    assert(timeout.inMilliseconds >= 250);
    const delay = Duration(milliseconds: 250);

    if (any(finder)) return;

    Future? future;
    return Future.doWhile(() async {
      if (any(finder)) return false;
      future = pump(delay);
      await future;
      return true;
    }).timeout(
      timeout,
      onTimeout: () async {
        // Ensures the `pump(delay)` future is awaited even on timeout to prevent
        // `FlutterGuardedError`s.
        await future;
        debugPrint(
            '\nWARNING: A call to pumpUntil() with finder "$finder" did not complete within the specified timeout $timeout.\n${StackTrace.current}');
      },
    );
  }
}
