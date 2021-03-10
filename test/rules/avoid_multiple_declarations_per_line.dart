// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// test w/ `pub run test -N avoid_multiple_declarations_per_line`

final String badFoo, badBar, badBaz; // LINT

final String goodFoo; // OK
final String goodBar; // OK
final String goodBaz; // OK
