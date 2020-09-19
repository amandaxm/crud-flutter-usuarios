import 'dart:convert';
import 'dart:io';

import 'package:crud_usuario/Util/network/network.dart';
import 'package:crud_usuario/models/dto/CacheDTO.dart';
import 'package:shared_preferences/shared_preferences.dart';



class BaseService {
  final _frwkNetwork = NetworkService.instance;

  Future<dynamic> request(
    HttpMethod method,
    String endpoint, {
    Map headers,
    body,
    bool cacheFirst = false,
    bool ignoreInterceptor = false,
  }) async {
    if (cacheFirst) {
      dynamic response = await this._getCache(endpoint);
      if (response != null) {
        this._doRequest(
          method,
          endpoint,
          headers: headers,
          body: body,
          saveCache: cacheFirst,
          ignoreInterceptor: ignoreInterceptor,
        );
        return response;
      } else {
        return this._doRequest(
          method,
          endpoint,
          headers: headers,
          body: body,
          saveCache: cacheFirst,
          ignoreInterceptor: ignoreInterceptor,
        );
      }
    }
    return this._doRequest(
      method,
      endpoint,
      headers: headers,
      body: body,
      saveCache: cacheFirst,
      ignoreInterceptor: ignoreInterceptor,
    );
  }

  Future<dynamic> _doRequest(HttpMethod method, String endpoint,
      {Map<String, dynamic> headers,
      body,
      bool saveCache,
      bool ignoreInterceptor}) {
    return _frwkNetwork
        .request(method, endpoint,
            headers: headers, body: body, ignoreInterceptor: ignoreInterceptor)
        .then((response) async {
      if (saveCache) this._saveCache(endpoint, response);
      return response;
    }).catchError((error) {
      throw (error);
    });
  }

  Future<dynamic> _getCache(String endpoint) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var str = prefs.getString(endpoint);
    if (str == null) return null;
    var cacheData = CacheDTO.map(json.decode(str));
    if (cacheData != null && cacheData.isCacheValid) {
      var decodedData = json.decode(cacheData.data);
      return decodedData;
    } else
      return null;
  }

  _saveCache(String key, dynamic map) async {
    var encodedData = json.encode(map);
    var cacheData = CacheDTO(data: encodedData);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(cacheData.toMap()));
  }
}
