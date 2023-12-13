import 'package:flutter/material.dart';

class Account {
  final String username;
  final String email;
  final String password;

  Account(this.username, this.email, this.password);
}

class AccountManager {
  static List<Account> accounts = [];

  static bool createAccount(String username, String email, String password) {
    if (accounts.any((account) => account.username == username)) {
      return false; // Akun sudah ada
    } else {
      accounts.add(Account(username, email, password));
      return true; // Akun berhasil dibuat
    }
  }

  static bool login(String username, String password) {
    return accounts.any((account) =>
        account.username ==  username && account.password == password);
  }

  static bool loginWithEmail(String email, String password) {
    return accounts.any((account) =>
        account.email == email && account.password == password);
  }
}