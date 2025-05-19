import 'package:freezed_annotation/freezed_annotation.dart';

part 'latlng_model.freezed.dart';

@freezed
class LatLngModel with _$LatLngModel {
  const LatLngModel._();

  const factory LatLngModel({required double lat, required double lng}) = _LatLngModel;

}
