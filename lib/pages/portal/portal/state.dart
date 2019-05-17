import 'package:fish_redux/fish_redux.dart';

class PortalState implements Cloneable<PortalState> {

  @override
  PortalState clone() {
    return PortalState();
  }
}

PortalState initState(Map<String, dynamic> args) {
  return PortalState();
}
