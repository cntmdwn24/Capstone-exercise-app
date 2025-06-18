import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../common/ip.dart';

class AuthRepository {
  Future<void> setName(BuildContext context) async {
    final response = await http.post(
      Uri.parse('$url/user/info'),
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzM4NCJ9.eyJzdWIiOiJjbnRtZHduNTUyMkBnbWFpbC5jb20iLCJpYXQiOjE3NTAyMzYxNTUsImV4cCI6MTc1MDU5NjE1NX0.lB8o8AIXH0TzQnVuQKkUeGAEw50-HuffhyP73EcrIpXef2NXgXI4e-mM1XLYTCPJ',
      },
      body: {
        "nick_name": "asdf",
        "gym_name": "asdf",
        "gym_address": "asdf",
        "latitude": 0.1,
        "longitude": 0.1,
      },
    );

    if (response.statusCode == 200) {
      print('success');
    } else
      print('erroe');
  }
}
