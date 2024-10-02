import 'package:http/http.dart' as http;

import '../../../../src.dart';

class UserRemoteDataSource {
  final http.Client client;

  UserRemoteDataSource(this.client);

  Future<UserModel> getUser(String uid) async {
    try {
      final response =
          await client.get(Uri.parse('https://api.example.com/users/$uid'));
      if (response.statusCode == 200) {
        return UserModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load user');
      }
    } finally {
      client.close();
    }
  }

  Future<void> updateUser(UserModel user) async {
    try {
      final response = await client.put(
        Uri.parse('https://api.example.com/users/${user.id}'),
        body: json.encode(user.toJson()),
      );
      if (response.statusCode != 200) {
        throw Exception('Failed to update user');
      }
    } finally {
      client.close();
    }
  }
}
