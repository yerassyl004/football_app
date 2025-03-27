import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;
  final Map<String, String> headers;

  ApiClient({required this.baseUrl, Map<String, String>? headers})
      : headers = headers ?? {'Content-Type': 'application/json'};

  Future<Map<String, dynamic>> get(String endpoint, {Map<String, String>? queryParams}) async {
    try {
      final uri = Uri.parse('$baseUrl$endpoint').replace(queryParameters: queryParams);
      final response = await http.get(uri, headers: headers);

      return _processResponse(response);
    } catch (e) {
      throw Exception('GET request failed: $e');
    }
  }

  Map<String, dynamic> _processResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'HTTP Error: ${response.statusCode}, Response: ${response.body}');
    }
  }
}

final api = ApiClient(
  baseUrl: 'https://v3.football.api-sports.io/',
  headers: {
    'x-rapidapi-host': 'v3.football.api-sports.io',
    'x-rapidapi-key': '2d5249be42745672e7c2d83510fdd3d9',
  },
);

