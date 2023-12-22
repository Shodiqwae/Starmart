import 'package:flutter/material.dart';

class Account {
  final String username;
  final String email;
  final String password;
  final String pin;
  final String address;
  final String city;
  final String country;

  Account(this.username, this.email, this.password, this.pin, this.address, this.city, this.country);
}

class AccountManager {
  static List<Account> accounts = [];

  static bool createAccount(String username, String email, String password, String pin, String address, String city, String country){
    if (accounts.any((account) => account.username == username)) {
      return false; // Akun sudah ada
    } else {
      accounts.add(Account(username, email, password, pin, address, city, country));
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