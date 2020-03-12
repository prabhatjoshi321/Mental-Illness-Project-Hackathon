

import 'StatusItemModel.dart';

class StatusHelper {

  static var statusList = [StatusItemModel("Doctor 1", "Yesterday, 11:21 PM"), StatusItemModel("Doctor 2", "Yesterday, 10:22 PM")];

  static StatusItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;

}
