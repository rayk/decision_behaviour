import 'dart:async';

import 'base.dart';

/// Contains only one child node, for which it transforms the result it
/// receive from their child node's status, to terminate the child,
/// or repeat processing of the child, depending on the type of decorator node.
abstract class Decorator {}

/// Simply inverts the result of the child.
class Inverter extends Decorator implements Node {
  @override
  FutureOr<NodeStatus> tick() {
    // TODO: implement tick
    throw UnimplementedError();
  }
}
