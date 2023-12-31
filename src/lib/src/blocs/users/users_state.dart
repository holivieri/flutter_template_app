part of 'users_bloc.dart';

abstract class UsersState {}

class UsersInitial extends UsersState {}

class ValidatingUser extends UsersState {}

class UserIsValidated extends UsersState {
  UserIsValidated(this.user);

  final LoginResponse user;
}

class ValidateError extends UsersState {
  ValidateError(this.message);

  final String message;
}

class UserIsLoggedIn extends UsersState {}
