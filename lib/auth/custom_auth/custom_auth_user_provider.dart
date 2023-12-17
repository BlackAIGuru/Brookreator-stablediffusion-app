import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class BrookreatorAuthUser {
  BrookreatorAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BrookreatorAuthUser> brookreatorAuthUserSubject =
    BehaviorSubject.seeded(BrookreatorAuthUser(loggedIn: false));
Stream<BrookreatorAuthUser> brookreatorAuthUserStream() =>
    brookreatorAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
