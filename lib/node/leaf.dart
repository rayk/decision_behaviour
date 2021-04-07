import 'base.dart';

/// Don't contain child and carry out all the actions.
abstract class Leaf {}

/// Childless node that performs some kind of synchronous action change
/// the state to mutate, Returning any one of [NodeStatus].
class SyncAction extends Leaf implements Node {}

/// Childless node that performs some kind of asynchronous action change
/// the state to mutate, Returning any one of [NodeStatus].
class AsyncAction extends Leaf implements Node {}

/// Childless node that determines if a condition is true or false
/// based on the current context. In the event the condition is true
/// [NodeStatus.success] is return otherwise [NodeStatus.failure] is returned.
class Condition extends Leaf implements Node {}
