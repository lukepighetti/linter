// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/ast/visitor.dart';

import '../analyzer.dart';

const _desc = r"Don't make multiple declarations on a single line.";

const _details = r'''

**DON'T** make multiple declarations on a single line.

**BAD:**
```
final String foo, bar, baz;
```

**GOOD:**
```
final String foo;
final String bar;
final String baz;
```

''';

class AvoidMultipleDeclarationsPerLine extends LintRule
    implements NodeLintRule {
  AvoidMultipleDeclarationsPerLine()
      : super(
            name: 'avoid_multiple_declarations_per_line',
            description: _desc,
            details: _details,
            group: Group.style);

  @override
  void registerNodeProcessors(
      NodeLintRegistry registry, LinterContext context) {
    final visitor = _Visitor(this);
    registry.addFieldDeclaration(this, visitor);
  }
}

class _Visitor extends SimpleAstVisitor {
  final LintRule rule;

  _Visitor(this.rule);
}
