import 'package:fish_redux/fish_redux.dart';

class PersonState implements Cloneable<PersonState> {

  @override
  PersonState clone() {
    return PersonState();
  }
}

PersonState initState(Map<String, dynamic> args) {
  return PersonState();
}
