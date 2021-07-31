import 'package:seventh_app/domain/entities/entities.dart';

class SeventhMediaModel extends SeventhMediaEntity {
  SeventhMediaModel({required String url}) : super(url: url);

  factory SeventhMediaModel.fromJson(Map<String, dynamic> json) =>
      SeventhMediaModel(url: json['url']);

  Map<String, dynamic> toJson() => {"url": url};

  String get baseUrl => this.url;
}
