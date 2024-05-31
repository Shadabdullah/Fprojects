import '../constants/status_enum.dart';

mixin Trackable {
  ItemStatus? _status;

  ItemStatus? get status => _status;

  void changeStatus(ItemStatus newStatus) {
    _status = newStatus;
  }
}
