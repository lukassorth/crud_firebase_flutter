import 'authentication.dart';

class Repositorio {
  final _authRepositorio = Authentication();

  //! Autenticação
  Stream<FirebaseUser> get onAuthStateChange =>
      _authRepositorio.onAuthStateChange;
}
