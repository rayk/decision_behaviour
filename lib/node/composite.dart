import 'base.dart';

/// Composite node that can have one or more children. They will process one or more of
/// these children in either a first to last sequence or random order
/// depending on the particular composite node in question, and at some stage
/// will consider their processing complete and pass either success or
/// failure to their parent, often determined by the success or failure of the
/// child nodes. During the time they are processing children,
/// they will continue to return Running to the parent.
abstract class Composite {}

/// Sequence simply runs each child in sequence, returning failure at the
/// point any of the children failing, and returning success if every child
/// returned a successful status.
///
/// The children of a sequence is processes as follows:
/// - If a child returns [NodeStatus.success], tick the next one.
/// - If a child returns [NodeStatus.failure], then no more children are
///  ticked and the Sequence returns [NodeStatus.failure].
/// - If all the children return [NodeStatus.success], then the Sequence returns
/// [NodeStatus.success] too.
class Sequence extends Composite implements Node {}

/// Selector returns success if any one of it's children succeeds and stops
/// processing it's other children as soon as it receives it first success.
/// To get to success it processes each of its children, disregarding fails
/// of any particular child. If all the child fail then the selector itself
/// fails.
///
/// The children of a selector are processes as follows:
///
/// - If a child returns [NodeStatus.failure], tick the next one.
/// - If a child returns [NodeStatus.success], then no more children are ticked
/// and this selector returns [NodeStatus.success].
/// - If all the children return [NodeStatus.failure], then this selector
/// returns [NodeStatus.failure] too.
class Selector extends Composite implements Node {}
