// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_metrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LiveMetricsModel {

@JsonKey(name: "timestamp") DateTime? get timestamp;@JsonKey(name: "campaigns") List<LiveCampaignMetric>? get campaigns;
/// Create a copy of LiveMetricsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveMetricsModelCopyWith<LiveMetricsModel> get copyWith => _$LiveMetricsModelCopyWithImpl<LiveMetricsModel>(this as LiveMetricsModel, _$identity);

  /// Serializes this LiveMetricsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveMetricsModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.campaigns, campaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(campaigns));

@override
String toString() {
  return 'LiveMetricsModel(timestamp: $timestamp, campaigns: $campaigns)';
}


}

/// @nodoc
abstract mixin class $LiveMetricsModelCopyWith<$Res>  {
  factory $LiveMetricsModelCopyWith(LiveMetricsModel value, $Res Function(LiveMetricsModel) _then) = _$LiveMetricsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "timestamp") DateTime? timestamp,@JsonKey(name: "campaigns") List<LiveCampaignMetric>? campaigns
});




}
/// @nodoc
class _$LiveMetricsModelCopyWithImpl<$Res>
    implements $LiveMetricsModelCopyWith<$Res> {
  _$LiveMetricsModelCopyWithImpl(this._self, this._then);

  final LiveMetricsModel _self;
  final $Res Function(LiveMetricsModel) _then;

/// Create a copy of LiveMetricsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? campaigns = freezed,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,campaigns: freezed == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetric>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveMetricsModel].
extension LiveMetricsModelPatterns on LiveMetricsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveMetricsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveMetricsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveMetricsModel value)  $default,){
final _that = this;
switch (_that) {
case _LiveMetricsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveMetricsModel value)?  $default,){
final _that = this;
switch (_that) {
case _LiveMetricsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "timestamp")  DateTime? timestamp, @JsonKey(name: "campaigns")  List<LiveCampaignMetric>? campaigns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveMetricsModel() when $default != null:
return $default(_that.timestamp,_that.campaigns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "timestamp")  DateTime? timestamp, @JsonKey(name: "campaigns")  List<LiveCampaignMetric>? campaigns)  $default,) {final _that = this;
switch (_that) {
case _LiveMetricsModel():
return $default(_that.timestamp,_that.campaigns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "timestamp")  DateTime? timestamp, @JsonKey(name: "campaigns")  List<LiveCampaignMetric>? campaigns)?  $default,) {final _that = this;
switch (_that) {
case _LiveMetricsModel() when $default != null:
return $default(_that.timestamp,_that.campaigns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveMetricsModel implements LiveMetricsModel {
  const _LiveMetricsModel({@JsonKey(name: "timestamp") this.timestamp, @JsonKey(name: "campaigns") final  List<LiveCampaignMetric>? campaigns}): _campaigns = campaigns;
  factory _LiveMetricsModel.fromJson(Map<String, dynamic> json) => _$LiveMetricsModelFromJson(json);

@override@JsonKey(name: "timestamp") final  DateTime? timestamp;
 final  List<LiveCampaignMetric>? _campaigns;
@override@JsonKey(name: "campaigns") List<LiveCampaignMetric>? get campaigns {
  final value = _campaigns;
  if (value == null) return null;
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LiveMetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveMetricsModelCopyWith<_LiveMetricsModel> get copyWith => __$LiveMetricsModelCopyWithImpl<_LiveMetricsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveMetricsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveMetricsModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._campaigns, _campaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(_campaigns));

@override
String toString() {
  return 'LiveMetricsModel(timestamp: $timestamp, campaigns: $campaigns)';
}


}

/// @nodoc
abstract mixin class _$LiveMetricsModelCopyWith<$Res> implements $LiveMetricsModelCopyWith<$Res> {
  factory _$LiveMetricsModelCopyWith(_LiveMetricsModel value, $Res Function(_LiveMetricsModel) _then) = __$LiveMetricsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "timestamp") DateTime? timestamp,@JsonKey(name: "campaigns") List<LiveCampaignMetric>? campaigns
});




}
/// @nodoc
class __$LiveMetricsModelCopyWithImpl<$Res>
    implements _$LiveMetricsModelCopyWith<$Res> {
  __$LiveMetricsModelCopyWithImpl(this._self, this._then);

  final _LiveMetricsModel _self;
  final $Res Function(_LiveMetricsModel) _then;

/// Create a copy of LiveMetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? campaigns = freezed,}) {
  return _then(_LiveMetricsModel(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,campaigns: freezed == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetric>?,
  ));
}


}

LiveCampaignMetric _$LiveCampaignMetricFromJson(
  Map<String, dynamic> json
) {
    return _Campaign.fromJson(
      json
    );
}

/// @nodoc
mixin _$LiveCampaignMetric {

@JsonKey(name: "id") String? get id;@JsonKey(name: "impressions_last_hour") int? get impressionsLastHour;@JsonKey(name: "clicks_last_hour") int? get clicksLastHour;@JsonKey(name: "spend_last_hour") double? get spendLastHour;@JsonKey(name: "ctr_last_hour") double? get ctrLastHour;
/// Create a copy of LiveCampaignMetric
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveCampaignMetricCopyWith<LiveCampaignMetric> get copyWith => _$LiveCampaignMetricCopyWithImpl<LiveCampaignMetric>(this as LiveCampaignMetric, _$identity);

  /// Serializes this LiveCampaignMetric to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveCampaignMetric&&(identical(other.id, id) || other.id == id)&&(identical(other.impressionsLastHour, impressionsLastHour) || other.impressionsLastHour == impressionsLastHour)&&(identical(other.clicksLastHour, clicksLastHour) || other.clicksLastHour == clicksLastHour)&&(identical(other.spendLastHour, spendLastHour) || other.spendLastHour == spendLastHour)&&(identical(other.ctrLastHour, ctrLastHour) || other.ctrLastHour == ctrLastHour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,impressionsLastHour,clicksLastHour,spendLastHour,ctrLastHour);

@override
String toString() {
  return 'LiveCampaignMetric(id: $id, impressionsLastHour: $impressionsLastHour, clicksLastHour: $clicksLastHour, spendLastHour: $spendLastHour, ctrLastHour: $ctrLastHour)';
}


}

/// @nodoc
abstract mixin class $LiveCampaignMetricCopyWith<$Res>  {
  factory $LiveCampaignMetricCopyWith(LiveCampaignMetric value, $Res Function(LiveCampaignMetric) _then) = _$LiveCampaignMetricCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "impressions_last_hour") int? impressionsLastHour,@JsonKey(name: "clicks_last_hour") int? clicksLastHour,@JsonKey(name: "spend_last_hour") double? spendLastHour,@JsonKey(name: "ctr_last_hour") double? ctrLastHour
});




}
/// @nodoc
class _$LiveCampaignMetricCopyWithImpl<$Res>
    implements $LiveCampaignMetricCopyWith<$Res> {
  _$LiveCampaignMetricCopyWithImpl(this._self, this._then);

  final LiveCampaignMetric _self;
  final $Res Function(LiveCampaignMetric) _then;

/// Create a copy of LiveCampaignMetric
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? impressionsLastHour = freezed,Object? clicksLastHour = freezed,Object? spendLastHour = freezed,Object? ctrLastHour = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,impressionsLastHour: freezed == impressionsLastHour ? _self.impressionsLastHour : impressionsLastHour // ignore: cast_nullable_to_non_nullable
as int?,clicksLastHour: freezed == clicksLastHour ? _self.clicksLastHour : clicksLastHour // ignore: cast_nullable_to_non_nullable
as int?,spendLastHour: freezed == spendLastHour ? _self.spendLastHour : spendLastHour // ignore: cast_nullable_to_non_nullable
as double?,ctrLastHour: freezed == ctrLastHour ? _self.ctrLastHour : ctrLastHour // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveCampaignMetric].
extension LiveCampaignMetricPatterns on LiveCampaignMetric {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Campaign value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Campaign value)  $default,){
final _that = this;
switch (_that) {
case _Campaign():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Campaign value)?  $default,){
final _that = this;
switch (_that) {
case _Campaign() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "impressions_last_hour")  int? impressionsLastHour, @JsonKey(name: "clicks_last_hour")  int? clicksLastHour, @JsonKey(name: "spend_last_hour")  double? spendLastHour, @JsonKey(name: "ctr_last_hour")  double? ctrLastHour)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "impressions_last_hour")  int? impressionsLastHour, @JsonKey(name: "clicks_last_hour")  int? clicksLastHour, @JsonKey(name: "spend_last_hour")  double? spendLastHour, @JsonKey(name: "ctr_last_hour")  double? ctrLastHour)  $default,) {final _that = this;
switch (_that) {
case _Campaign():
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String? id, @JsonKey(name: "impressions_last_hour")  int? impressionsLastHour, @JsonKey(name: "clicks_last_hour")  int? clicksLastHour, @JsonKey(name: "spend_last_hour")  double? spendLastHour, @JsonKey(name: "ctr_last_hour")  double? ctrLastHour)?  $default,) {final _that = this;
switch (_that) {
case _Campaign() when $default != null:
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Campaign implements LiveCampaignMetric {
  const _Campaign({@JsonKey(name: "id") this.id, @JsonKey(name: "impressions_last_hour") this.impressionsLastHour, @JsonKey(name: "clicks_last_hour") this.clicksLastHour, @JsonKey(name: "spend_last_hour") this.spendLastHour, @JsonKey(name: "ctr_last_hour") this.ctrLastHour});
  factory _Campaign.fromJson(Map<String, dynamic> json) => _$CampaignFromJson(json);

@override@JsonKey(name: "id") final  String? id;
@override@JsonKey(name: "impressions_last_hour") final  int? impressionsLastHour;
@override@JsonKey(name: "clicks_last_hour") final  int? clicksLastHour;
@override@JsonKey(name: "spend_last_hour") final  double? spendLastHour;
@override@JsonKey(name: "ctr_last_hour") final  double? ctrLastHour;

/// Create a copy of LiveCampaignMetric
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCopyWith<_Campaign> get copyWith => __$CampaignCopyWithImpl<_Campaign>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Campaign&&(identical(other.id, id) || other.id == id)&&(identical(other.impressionsLastHour, impressionsLastHour) || other.impressionsLastHour == impressionsLastHour)&&(identical(other.clicksLastHour, clicksLastHour) || other.clicksLastHour == clicksLastHour)&&(identical(other.spendLastHour, spendLastHour) || other.spendLastHour == spendLastHour)&&(identical(other.ctrLastHour, ctrLastHour) || other.ctrLastHour == ctrLastHour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,impressionsLastHour,clicksLastHour,spendLastHour,ctrLastHour);

@override
String toString() {
  return 'LiveCampaignMetric(id: $id, impressionsLastHour: $impressionsLastHour, clicksLastHour: $clicksLastHour, spendLastHour: $spendLastHour, ctrLastHour: $ctrLastHour)';
}


}

/// @nodoc
abstract mixin class _$CampaignCopyWith<$Res> implements $LiveCampaignMetricCopyWith<$Res> {
  factory _$CampaignCopyWith(_Campaign value, $Res Function(_Campaign) _then) = __$CampaignCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String? id,@JsonKey(name: "impressions_last_hour") int? impressionsLastHour,@JsonKey(name: "clicks_last_hour") int? clicksLastHour,@JsonKey(name: "spend_last_hour") double? spendLastHour,@JsonKey(name: "ctr_last_hour") double? ctrLastHour
});




}
/// @nodoc
class __$CampaignCopyWithImpl<$Res>
    implements _$CampaignCopyWith<$Res> {
  __$CampaignCopyWithImpl(this._self, this._then);

  final _Campaign _self;
  final $Res Function(_Campaign) _then;

/// Create a copy of LiveCampaignMetric
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? impressionsLastHour = freezed,Object? clicksLastHour = freezed,Object? spendLastHour = freezed,Object? ctrLastHour = freezed,}) {
  return _then(_Campaign(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,impressionsLastHour: freezed == impressionsLastHour ? _self.impressionsLastHour : impressionsLastHour // ignore: cast_nullable_to_non_nullable
as int?,clicksLastHour: freezed == clicksLastHour ? _self.clicksLastHour : clicksLastHour // ignore: cast_nullable_to_non_nullable
as int?,spendLastHour: freezed == spendLastHour ? _self.spendLastHour : spendLastHour // ignore: cast_nullable_to_non_nullable
as double?,ctrLastHour: freezed == ctrLastHour ? _self.ctrLastHour : ctrLastHour // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
