import 'package:equatable/equatable.dart';

class SeventhMediaEntity extends Equatable {
  final String url;

  SeventhMediaEntity({required this.url});

  @override
  List<Object?> get props => [url];
}
