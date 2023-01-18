// Copyright 2020 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Create a new test file
// First, you'll test the add() method in the Favorites model to verify that
//  a new item gets added to the list, and that the list reflects the change.
// By convention, the directory structure in the test directory mimics that
// in the lib directory and the Dart files have the same name, but appended with _test.

//There can be multiple groups in a single test file intended to test different parts of the corresponding file

import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group("Description: Creates a group of tests. Testing App Provider", () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
    test('An iterm should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
