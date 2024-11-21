// home/respository/user_repository.dart
import '../model/user.dart';

class UserRepository {
  User? authenticate(String username, String password) {
    // Mock authentication
    if (username == 'admin' && password == 'admin') {
      return User(username: username, password: password);
    }
    return null;
  }
}
