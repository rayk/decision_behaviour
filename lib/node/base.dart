import 'dart:async';

/// Interface that is implemented by the various types of the tree nodes.
abstract class Node {
  FutureOr<NodeStatus> tick();
}

/// Enumeration of the execution status of a node.
enum NodeStatus { success, running, failure }
