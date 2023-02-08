// The StateNotifier class that will be passed to our StateNotifierProvider.
// This class should not expose state outside of its "state" property, which means
// no public getters/properties!
// The public methods on this class will be what allow the UI to modify the state.
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mydemo/models/user_model.dart';

import '../api_client/dio_client.dart';
import '../local_database/database.dart';

class UserListNotifier extends StateNotifier<List<UserModel>> {
  // We initialize the list of todos to an empty list
  UserListNotifier() : super([]);

  final DioClient _client = DioClient();
  final database = MyDatabase();

  void getUserList() async {
    var list = await _client.getUser();
    if (list == null) return;
    state = list;
    database.delete(database.users);

    for (var element in list) {
      await database.into(database.users).insert(UsersCompanion.insert(
            gender: element.gender,
            name: json.encode(element.name.toJson()),
            location: json.encode(element.location.toJson()),
            email: element.email,
            login: json.encode(element.login.toJson()),
            dob: json.encode(element.dob.toJson()),
            registered: json.encode(element.registered.toJson()),
            phone: element.phone,
            cell: element.cell,
            id: json.encode(element.id.toJson()),
            picture: json.encode(element.picture.toJson()),
            nat: element.nat,
          ));
    }
  }

  void getLocalUserList() async {
    final allUsers = await database.select(database.users).get();

    for (var user in allUsers) {
      var data = UserModel(
        gender: user.gender,
        name: Name.fromJson(json.decode(user.name)),
        location: Location.fromJson(json.decode(user.location)),
        email: user.email,
        login: Login.fromJson(json.decode(user.login)),
        dob: Dob.fromJson(json.decode(user.dob)),
        registered: Dob.fromJson(json.decode(user.registered)),
        phone: user.phone,
        cell: user.cell,
        id: Id.fromJson(json.decode(user.id)),
        picture: Picture.fromJson(json.decode(user.picture)),
        nat: user.nat,
      );
      state = [...state, data];
    }

    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      getUserList();
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      getUserList();
    }
  }
}

// Finally, we are using StateNotifierProvider to allow the UI to interact with
// our TodosNotifier class.
final userListProvider =
    StateNotifierProvider<UserListNotifier, List<UserModel>>((ref) {
  return UserListNotifier();
});
