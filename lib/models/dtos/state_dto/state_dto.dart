import 'package:flutter_code_test_dropdown_buttons_bloc/models/data_models/state/state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_dto.freezed.dart';
part 'state_dto.g.dart';

@freezed
abstract class StateDto with _$StateDto {
  factory StateDto({
    required int id,
    required String value,
  }) = _StateDto;
  StateDto._();

  factory StateDto.fromJson(Map<String, dynamic> json) =>
      _$StateDtoFromJson(json);

  State toState() => State(
        id: id,
        value: value,
      );
}
