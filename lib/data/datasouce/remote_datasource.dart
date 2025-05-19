import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nukeem/data/datasouce/utils.dart';
import 'package:nukeem/data/models/config_model.dart';
import 'package:nukeem/data/models/exceptions.dart';

const String basepath = 'hitler';

abstract class RemoteDatasource {
  Future<ConfigModel> getConfig();
  Future<ConfigModel> getLeaderboard();
  Future<ConfigModel> getRockets();
}

class RemoteDatasourceImpl implements RemoteDatasource {
  final http.Client client;

  RemoteDatasourceImpl({required this.client});

  @override
  Future<ConfigModel> getConfig() async {
    final response = await client.get(Uri.parse('$basepath/v69/config-service/config/"'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body);
      return ConfigModel.fromJson(responseBody['data']);
    }
  }

  @override
  Future<ConfigModel> getLeaderboard() async {
    final response = await client.get(Uri.parse('$basepath/v69/config-service/config/"'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body);
      return ConfigModel.fromJson(responseBody['data']);
    }
  }

  @override
  Future<ConfigModel> getRockets() async {
    final response = await client.get(Uri.parse('$basepath/v69/config-service/config/"'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body);
      return ConfigModel.fromJson(responseBody['data']);
    }
  }

  @override
  Future<void> sendNuke() async {
    final response = await client.post(Uri.parse('$basepath/v69/whoop-service/whoop/"'), headers: generateHeader());
    if (response.statusCode != 201) {
      throw const DataException.server();
    } else {
      return;
    }
  }
}
