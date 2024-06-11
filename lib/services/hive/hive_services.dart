part of '../../auth_library.dart';

/// ### Hive Services
/// *__This class is for hive service or local storage__*
abstract class HiveServices {
  /// register box
  CollectionBox? _registeredBox;

  /// authorized box
  CollectionBox? _authorizedBox;

  /// signin box
  CollectionBox? _signInBox;

  /// signup box
  CollectionBox? _signUpBox;

  /// get value is registered or not
  Future<bool> get registered;

  /// get value authorized or not
  Future<bool> get authorized;

  /// get sign in data
  Future<Signin> get signInData;

  /// get sign up data
  Future<Signup> get signUpData;

  /// ### Set Register or Not
  /// *__This method store registered data__*
  ///
  /// __Requested Parameters__
  /// * [bool]
  Future<void> setRegisteredOrNot({required bool value});

  /// ### Set Authorized or Not
  /// *__This method store authorized data__*
  ///
  /// __Requested Parameters__
  /// * [bool]
  Future<void> setAuthorizedOrNot({required bool value});

  /// ### Set Signup Data
  /// *__This method store signup data__*
  ///
  /// __Requested Parameters__
  /// * [Signup]
  Future<void> setSignupData({required Signup signup});

  /// ### Set Signin Data
  /// *__This method store signin data__*
  ///
  /// __Requested Parameters__
  /// * [Signin]
  Future<void> setSigninData({required Signin signin});
}
