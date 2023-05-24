abstract class EventAuth {}

class GetSearchSnapshotEvent extends EventAuth {
  final String nameGroup;
  GetSearchSnapshotEvent(this.nameGroup);
}

class IsJoinEvent extends EventAuth {
  final String groupName;
  final String groupId ;
  IsJoinEvent(this.groupName , this.groupId );
}