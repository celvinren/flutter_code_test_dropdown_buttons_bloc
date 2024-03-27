import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_dto.freezed.dart';
part 'state_dto.g.dart';

@freezed
abstract class StateDto with _$StateDto {
  factory StateDto({
    required int id,
    required String value,
  }) = _StateDto;

  factory StateDto.fromJson(Map<String, dynamic> json) =>
      _$StateDtoFromJson(json);
}
