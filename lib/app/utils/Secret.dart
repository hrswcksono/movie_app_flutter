// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

class Secret {
  final String apiKey;
  Secret({this.apiKey = ""});
  factory Secret.fromJson(Map<String, dynamic> jsonMap) {
    return Secret(apiKey: jsonMap["api_key"]);
  }
}
