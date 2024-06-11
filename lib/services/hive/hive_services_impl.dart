part of '../../auth_library.dart';

class _HiveServicesImpl extends HiveServices {
  _HiveServicesImpl() {
    _init();
  }

  final _authorized = "_authorized_";
  final _registered = "_registered_";
  final _signIn = "_sign_in_";
  final _signUp = "_sign_up_";

  late BoxCollection collection;

  void _init() async {
    collection = await BoxCollection.open("Authorized", {
      _authorized,
      _registered,
      _signIn,
      _signUp,
    });
    _authorizedBox = await collection.openBox<bool>(_authorized);
    _registeredBox = await collection.openBox<bool>(_registered);
    _signUpBox = await collection.openBox<Signup>(_signUp);
    _signInBox = await collection.openBox<Signin>(_signIn);
  }

  @override
  Future<bool> get authorized async =>
      await _authorizedBox?.get(_authorized) ?? false;

  @override
  Future<bool> get registered async =>
      await _registeredBox?.get(_registered) ?? false;

  @override
  Future<Signin> get signInData async =>
      await _signInBox?.get(_signIn) ?? Signin();

  @override
  Future<Signup> get signUpData async =>
      await _signUpBox?.get(_signUp) ?? Signup();

  @override
  Future<void> setAuthorizedOrNot({required bool value}) async {
    await _authorizedBox?.put(_authorized, value);
  }

  @override
  Future<void> setRegisteredOrNot({required bool value}) async {
    await _registeredBox?.put(_registered, value);
  }

  @override
  Future<void> setSigninData({required Signin signin}) async {
    await _signInBox?.put(_signIn, signin);
  }

  @override
  Future<void> setSignupData({required Signup signup}) async {
    await _signUpBox?.put(_signUp, signup);
  }
}
