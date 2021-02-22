import 'package:sample_app_chapter_6/models/current_user.dart';

abstract class AuthenticationRepository {
  Future<void> signOut();

  Future<bool> isSignedIn();

  Future<CurrentUser> getCurrentUser();
}
