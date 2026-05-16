// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anomaly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AnomalyModel _$AnomalyModelFromJson(
  Map<String, dynamic> json
) {
    return _Anomaly.fromJson(
      json
    );
}

/// @nodoc
mixin _$AnomalyModel {

@JsonKey(name: "id") String? get id;@JsonKey(name: "campaign_id") String? get campaignId;@JsonKey(name: "campaign_name") String? get campaignName;@JsonKey(name: "detected_at") DateTime? get detectedAt;@JsonKey(name: "type") String? get type;@JsonKey(name: "severity") String? get severity;@JsonKey(name: "metric") String? get metric;@JsonKey(name: "actual_value") double? get actualValue;@JsonKey(name: "expected_value") double? get expectedValue;@JsonKey(name: "deviation_percent") double? get deviationPercent;@JsonKey(name: "message") String? get message;
/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnomalyModelCopyWith<AnomalyModel> get copyWith => _$AnomalyModelCopyWithImpl<AnomalyModel>(this as AnomalyModel, _$identity);

  /// Serializes this AnomalyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnomalyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignName, campaignName) || other.campaignName == campaignName)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.actualValue, actualValue) || other.actualValue == actualValue)&&(identical(other.expectedValue, expectedValue) || other.expectedValue == expectedValue)&&(identical(other.deviationPercent, deviationPercent) || other.deviationPercent == deviationPercent)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,campaignName,detectedAt,type,severity,metric,actualValue,expectedValue,deviationPercent,message);

@override
String toString() {
  return 'AnomalyModel(id: $id, campaignId: $campaignId, campaignName: $campaignName, detectedAt: $detectedAt, type: $type, severity: $severity, metric: $metric, actualValue: $actualValue, expectedValue: $expectedValue, deviationPercent: $deviationPercent, message: $message)';
}


}

/// @nodoc
abstract mixin class $AnomalyModelCopyWith<$Res>  {
  factory $AnomalyModelCopyWith(AnomalyModel value, $Res Function(AnomalyModel) _then) = _$AnomalyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "campaign_id") String? campaignId,@JsonKey(name: "campaign_name") String? campaignName,@JsonKey(name: "detected_at") DateTime? detectedAt,@JsonKey(name: "type") String? type,@JsonKey(name: "severity") String? severity,@JsonKey(name: "metric") String? metric,@JsonKey(name: "actual_value") double? actualValue,@JsonKey(name: "expected_value") double? expectedValue,@JsonKey(name: "deviation_percent") double? deviationPercent,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class _$AnomalyModelCopyWithImpl<$Res>
    implements $AnomalyModelCopyWith<$Res> {
  _$AnomalyModelCopyWithImpl(this._self, this._then);

  final AnomalyModel _self;
  final $Res Function(AnomalyModel) _then;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? campaignId = freezed,Object? campaignName = freezed,Object? detectedAt = freezed,Object? type = freezed,Object? severity = freezed,Object? metric = freezed,Object? actualValue = freezed,Object? expectedValue = freezed,Object? deviationPercent = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignName: freezed == campaignName ? _self.campaignName : campaignName // ignore: cast_nullable_to_non_nullable
as String?,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,actualValue: freezed == actualValue ? _self.actualValue : actualValue // ignore: cast_nullable_to_non_nullable
as double?,expectedValue: freezed == expectedValue ? _self.expectedValue : expectedValue // ignore: cast_nullable_to_non_nullable
as double?,deviationPercent: freezed == deviationPercent ? _self.deviationPercent : deviationPercent // ignore: cast_nullable_to_non_nullable
as double?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnomalyModel].
extension AnomalyModelPatterns on AnomalyModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Anomaly value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Anomaly value)  $default,){
final _that = this;
switch (_that) {
case _Anomaly():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Anomaly value)?  $default,){
final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "campaign_name")  String? campaignName, @JsonKey(name: "detected_at")  DateTime? detectedAt, @JsonKey(name: "type")  String? type, @JsonKey(name: "severity")  String? severity, @JsonKey(name: "metric")  String? metric, @JsonKey(name: "actual_value")  double? actualValue, @JsonKey(name: "expected_value")  double? expectedValue, @JsonKey(name: "deviation_percent")  double? deviationPercent, @JsonKey(name: "message")  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "campaign_name")  String? campaignName, @JsonKey(name: "detected_at")  DateTime? detectedAt, @JsonKey(name: "type")  String? type, @JsonKey(name: "severity")  String? severity, @JsonKey(name: "metric")  String? metric, @JsonKey(name: "actual_value")  double? actualValue, @JsonKey(name: "expected_value")  double? expectedValue, @JsonKey(name: "deviation_percent")  double? deviationPercent, @JsonKey(name: "message")  String? message)  $default,) {final _that = this;
switch (_that) {
case _Anomaly():
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "campaign_name")  String? campaignName, @JsonKey(name: "detected_at")  DateTime? detectedAt, @JsonKey(name: "type")  String? type, @JsonKey(name: "severity")  String? severity, @JsonKey(name: "metric")  String? metric, @JsonKey(name: "actual_value")  double? actualValue, @JsonKey(name: "expected_value")  double? expectedValue, @JsonKey(name: "deviation_percent")  double? deviationPercent, @JsonKey(name: "message")  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Anomaly() when $default != null:
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Anomaly implements AnomalyModel {
  const _Anomaly({@JsonKey(name: "id") this.id, @JsonKey(name: "campaign_id") this.campaignId, @JsonKey(name: "campaign_name") this.campaignName, @JsonKey(name: "detected_at") this.detectedAt, @JsonKey(name: "type") this.type, @JsonKey(name: "severity") this.severity, @JsonKey(name: "metric") this.metric, @JsonKey(name: "actual_value") this.actualValue, @JsonKey(name: "expected_value") this.expectedValue, @JsonKey(name: "deviation_percent") this.deviationPercent, @JsonKey(name: "message") this.message});
  factory _Anomaly.fromJson(Map<String, dynamic> json) => _$AnomalyFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "campaign_id") final  String? campaignId;
@override@JsonKey(name: "campaign_name") final  String? campaignName;
@override@JsonKey(name: "detected_at") final  DateTime? detectedAt;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "severity") final  String? severity;
@override@JsonKey(name: "metric") final  String? metric;
@override@JsonKey(name: "actual_value") final  double? actualValue;
@override@JsonKey(name: "expected_value") final  double? expectedValue;
@override@JsonKey(name: "deviation_percent") final  double? deviationPercent;
@override@JsonKey(name: "message") final  String? message;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnomalyCopyWith<_Anomaly> get copyWith => __$AnomalyCopyWithImpl<_Anomaly>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnomalyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Anomaly&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignName, campaignName) || other.campaignName == campaignName)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.actualValue, actualValue) || other.actualValue == actualValue)&&(identical(other.expectedValue, expectedValue) || other.expectedValue == expectedValue)&&(identical(other.deviationPercent, deviationPercent) || other.deviationPercent == deviationPercent)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,campaignName,detectedAt,type,severity,metric,actualValue,expectedValue,deviationPercent,message);

@override
String toString() {
  return 'AnomalyModel(id: $id, campaignId: $campaignId, campaignName: $campaignName, detectedAt: $detectedAt, type: $type, severity: $severity, metric: $metric, actualValue: $actualValue, expectedValue: $expectedValue, deviationPercent: $deviationPercent, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AnomalyCopyWith<$Res> implements $AnomalyModelCopyWith<$Res> {
  factory _$AnomalyCopyWith(_Anomaly value, $Res Function(_Anomaly) _then) = __$AnomalyCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "campaign_id") String? campaignId,@JsonKey(name: "campaign_name") String? campaignName,@JsonKey(name: "detected_at") DateTime? detectedAt,@JsonKey(name: "type") String? type,@JsonKey(name: "severity") String? severity,@JsonKey(name: "metric") String? metric,@JsonKey(name: "actual_value") double? actualValue,@JsonKey(name: "expected_value") double? expectedValue,@JsonKey(name: "deviation_percent") double? deviationPercent,@JsonKey(name: "message") String? message
});




}
/// @nodoc
class __$AnomalyCopyWithImpl<$Res>
    implements _$AnomalyCopyWith<$Res> {
  __$AnomalyCopyWithImpl(this._self, this._then);

  final _Anomaly _self;
  final $Res Function(_Anomaly) _then;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? campaignId = freezed,Object? campaignName = freezed,Object? detectedAt = freezed,Object? type = freezed,Object? severity = freezed,Object? metric = freezed,Object? actualValue = freezed,Object? expectedValue = freezed,Object? deviationPercent = freezed,Object? message = freezed,}) {
  return _then(_Anomaly(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,campaignName: freezed == campaignName ? _self.campaignName : campaignName // ignore: cast_nullable_to_non_nullable
as String?,detectedAt: freezed == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,severity: freezed == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String?,metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,actualValue: freezed == actualValue ? _self.actualValue : actualValue // ignore: cast_nullable_to_non_nullable
as double?,expectedValue: freezed == expectedValue ? _self.expectedValue : expectedValue // ignore: cast_nullable_to_non_nullable
as double?,deviationPercent: freezed == deviationPercent ? _self.deviationPercent : deviationPercent // ignore: cast_nullable_to_non_nullable
as double?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
