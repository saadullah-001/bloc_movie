import 'dart:async';
import 'dart:convert';

import 'package:bloc_movies/data/exceptions/app_exceptions.dart';
import 'package:bloc_movies/data/network/base_api_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on TimeoutException {
      throw TimerOutException();
    } on FetchDataException {
      throw FetchDataException();
    } on NoInternetException {
      throw NoInternetException();
    }

    return responseJson;
  }

  @override
  Future<dynamic> postApi(String url, data, dynamic header) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on TimeoutException {
      throw TimerOutException();
    } on FetchDataException {
      throw FetchDataException();
    } on NoInternetException {
      throw NoInternetException();
    }

    return responseJson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      print("hello");

      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    case 400:
      //  final responseBody = jsonDecode(response.body);
      throw BadRequestException(message: response.body.toString());
    case 401:
      throw BadRequestException(message: response.body.toString());
    case 404:
      throw UnAuthorizedException(message: response.body.toString());
    default:
      throw UnknownException();
  }
}
