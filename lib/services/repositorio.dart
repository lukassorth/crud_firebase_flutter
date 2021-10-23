import 'authentication.dart';

class Repositorio {
  final _authResources = Authentication();

  //! Autenticação
  Stream<FirebaseUser> get onAuthStateChange =>
      _authResources.onAuthStateChange;
}
