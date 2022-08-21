import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../model/modelclass.dart';

class ApiServices {
  String endpoint = 'http://api.rjwada.com/items/inventory';
  Dio _dio = Dio();
  Future<ItemsInventory> getUsers() async {
    var response = await _dio.get(endpoint);
    if (response.statusCode == 200) {
      var result = response.data;
      return ItemsInventory.fromJson(result);
    } else {
      throw Exception('Failed to load post');
    }
  }
}

final userProvider = Provider<ApiServices>((ref) => ApiServices());
