import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nukeem/data/datasouce/utils.dart';
import 'package:nukeem/data/models/config_model.dart';
import 'package:nukeem/data/models/deployed_nuke_model.dart';
import 'package:nukeem/data/models/exceptions.dart';
import 'package:nukeem/data/models/heatmap_item.dart';
import 'package:nukeem/data/models/leaderboard_member_model.dart';
import 'package:nukeem/data/models/rocket_model.dart';

const String basepath = 'https://api.blastin.app';

abstract class RemoteDatasource {
  Future<ConfigModel> getConfig();
  Future<List<LeaderBoardMember>> getLeaderboard();
  Future<List<Rocket>> getRockets();
  Future<List<HeatmapItem>> getHeatmap();
  Future<void> sendNuke({required DeployedNuke deployedNuke});
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
  Future<List<LeaderBoardMember>> getLeaderboard() async {
    final response =
        await client.get(Uri.parse('$basepath/v69/board-service/leaderboard/"'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body) as List<dynamic>;
      return responseBody.map((e) => LeaderBoardMember.fromJson(e['data'])).toList();
    }
  }

  @override
  Future<List<Rocket>> getRockets() async {
    final response = await client.get(Uri.parse('$basepath/v69/rocket-service/offers/"'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body) as List<dynamic>;
      return responseBody.map((e) => Rocket.fromJson(e['data'])).toList();
    }
  }

  @override
  Future<List<HeatmapItem>> getHeatmap() async {
    final response = await client.get(Uri.parse('$basepath/v69/board-service/heatmap/'), headers: generateHeader());
    if (response.statusCode != 200) {
      throw const DataException.server();
    } else {
      final responseBody = json.decode(response.body) as List<dynamic>;
      return responseBody.map((e) => HeatmapItem.fromJson(e['data'])).toList();
    }
  }

  @override
  Future<void> sendNuke({required DeployedNuke deployedNuke}) async {
    final response = await client.post(Uri.parse('$basepath/v69/whoop-service/whoop/"'), headers: generateHeader());
    if (response.statusCode != 201) {
      throw const DataException.server();
    } else {
      return;
    }
  }
}
