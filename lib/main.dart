import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
String weburl = "https://jsonplaceholder.typicode.com/users";
getUsers(weburl);
}

getUsers(var apiUrl)async{
  var res = await http.get(Uri.parse(apiUrl));
  var users = jsonDecode(res.body);
  print(users);
}

