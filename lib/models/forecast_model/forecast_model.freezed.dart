// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastModel {

@JsonKey(name: "campaign_id") String? get campaignId;@JsonKey(name: "horizon_days") int? get horizonDays;@JsonKey(name: "model") String? get model;@JsonKey(name: "generated_at") DateTime? get generatedAt;@JsonKey(name: "forecast") List<Forecast>? get forecast;@JsonKey(name: "recommendation") Recommendation? get recommendation;
/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastModelCopyWith<ForecastModel> get copyWith => _$ForecastModelCopyWithImpl<ForecastModel>(this as ForecastModel, _$identity);

  /// Serializes this ForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.horizonDays, horizonDays) || other.horizonDays == horizonDays)&&(identical(other.model, model) || other.model == model)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other.forecast, forecast)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,horizonDays,model,generatedAt,const DeepCollectionEquality().hash(forecast),recommendation);

@override
String toString() {
  return 'ForecastModel(campaignId: $campaignId, horizonDays: $horizonDays, model: $model, generatedAt: $generatedAt, forecast: $forecast, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class $ForecastModelCopyWith<$Res>  {
  factory $ForecastModelCopyWith(ForecastModel value, $Res Function(ForecastModel) _then) = _$ForecastModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "campaign_id") String? campaignId,@JsonKey(name: "horizon_days") int? horizonDays,@JsonKey(name: "model") String? model,@JsonKey(name: "generated_at") DateTime? generatedAt,@JsonKey(name: "forecast") List<Forecast>? forecast,@JsonKey(name: "recommendation") Recommendation? recommendation
});


$RecommendationCopyWith<$Res>? get recommendation;

}
/// @nodoc
class _$ForecastModelCopyWithImpl<$Res>
    implements $ForecastModelCopyWith<$Res> {
  _$ForecastModelCopyWithImpl(this._self, this._then);

  final ForecastModel _self;
  final $Res Function(ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = freezed,Object? horizonDays = freezed,Object? model = freezed,Object? generatedAt = freezed,Object? forecast = freezed,Object? recommendation = freezed,}) {
  return _then(_self.copyWith(
campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,horizonDays: freezed == horizonDays ? _self.horizonDays : horizonDays // ignore: cast_nullable_to_non_nullable
as int?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,forecast: freezed == forecast ? _self.forecast : forecast // ignore: cast_nullable_to_non_nullable
as List<Forecast>?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as Recommendation?,
  ));
}
/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecommendationCopyWith<$Res>? get recommendation {
    if (_self.recommendation == null) {
    return null;
  }

  return $RecommendationCopyWith<$Res>(_self.recommendation!, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// Adds pattern-matching-related methods to [ForecastModel].
extension ForecastModelPatterns on ForecastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastModel value)  $default,){
final _that = this;
switch (_that) {
case _ForecastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "horizon_days")  int? horizonDays, @JsonKey(name: "model")  String? model, @JsonKey(name: "generated_at")  DateTime? generatedAt, @JsonKey(name: "forecast")  List<Forecast>? forecast, @JsonKey(name: "recommendation")  Recommendation? recommendation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "horizon_days")  int? horizonDays, @JsonKey(name: "model")  String? model, @JsonKey(name: "generated_at")  DateTime? generatedAt, @JsonKey(name: "forecast")  List<Forecast>? forecast, @JsonKey(name: "recommendation")  Recommendation? recommendation)  $default,) {final _that = this;
switch (_that) {
case _ForecastModel():
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "campaign_id")  String? campaignId, @JsonKey(name: "horizon_days")  int? horizonDays, @JsonKey(name: "model")  String? model, @JsonKey(name: "generated_at")  DateTime? generatedAt, @JsonKey(name: "forecast")  List<Forecast>? forecast, @JsonKey(name: "recommendation")  Recommendation? recommendation)?  $default,) {final _that = this;
switch (_that) {
case _ForecastModel() when $default != null:
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastModel implements ForecastModel {
  const _ForecastModel({@JsonKey(name: "campaign_id") this.campaignId, @JsonKey(name: "horizon_days") this.horizonDays, @JsonKey(name: "model") this.model, @JsonKey(name: "generated_at") this.generatedAt, @JsonKey(name: "forecast") final  List<Forecast>? forecast, @JsonKey(name: "recommendation") this.recommendation}): _forecast = forecast;
  factory _ForecastModel.fromJson(Map<String, dynamic> json) => _$ForecastModelFromJson(json);

@override@JsonKey(name: "campaign_id") final  String? campaignId;
@override@JsonKey(name: "horizon_days") final  int? horizonDays;
@override@JsonKey(name: "model") final  String? model;
@override@JsonKey(name: "generated_at") final  DateTime? generatedAt;
 final  List<Forecast>? _forecast;
@override@JsonKey(name: "forecast") List<Forecast>? get forecast {
  final value = _forecast;
  if (value == null) return null;
  if (_forecast is EqualUnmodifiableListView) return _forecast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "recommendation") final  Recommendation? recommendation;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastModelCopyWith<_ForecastModel> get copyWith => __$ForecastModelCopyWithImpl<_ForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.horizonDays, horizonDays) || other.horizonDays == horizonDays)&&(identical(other.model, model) || other.model == model)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other._forecast, _forecast)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,horizonDays,model,generatedAt,const DeepCollectionEquality().hash(_forecast),recommendation);

@override
String toString() {
  return 'ForecastModel(campaignId: $campaignId, horizonDays: $horizonDays, model: $model, generatedAt: $generatedAt, forecast: $forecast, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class _$ForecastModelCopyWith<$Res> implements $ForecastModelCopyWith<$Res> {
  factory _$ForecastModelCopyWith(_ForecastModel value, $Res Function(_ForecastModel) _then) = __$ForecastModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "campaign_id") String? campaignId,@JsonKey(name: "horizon_days") int? horizonDays,@JsonKey(name: "model") String? model,@JsonKey(name: "generated_at") DateTime? generatedAt,@JsonKey(name: "forecast") List<Forecast>? forecast,@JsonKey(name: "recommendation") Recommendation? recommendation
});


@override $RecommendationCopyWith<$Res>? get recommendation;

}
/// @nodoc
class __$ForecastModelCopyWithImpl<$Res>
    implements _$ForecastModelCopyWith<$Res> {
  __$ForecastModelCopyWithImpl(this._self, this._then);

  final _ForecastModel _self;
  final $Res Function(_ForecastModel) _then;

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = freezed,Object? horizonDays = freezed,Object? model = freezed,Object? generatedAt = freezed,Object? forecast = freezed,Object? recommendation = freezed,}) {
  return _then(_ForecastModel(
campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,horizonDays: freezed == horizonDays ? _self.horizonDays : horizonDays // ignore: cast_nullable_to_non_nullable
as int?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,generatedAt: freezed == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,forecast: freezed == forecast ? _self._forecast : forecast // ignore: cast_nullable_to_non_nullable
as List<Forecast>?,recommendation: freezed == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as Recommendation?,
  ));
}

/// Create a copy of ForecastModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecommendationCopyWith<$Res>? get recommendation {
    if (_self.recommendation == null) {
    return null;
  }

  return $RecommendationCopyWith<$Res>(_self.recommendation!, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// @nodoc
mixin _$Forecast {

@JsonKey(name: "date") DateTime? get date;@JsonKey(name: "predicted_ctr") double? get predictedCtr;@JsonKey(name: "lower_bound") double? get lowerBound;@JsonKey(name: "upper_bound") double? get upperBound;
/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastCopyWith<Forecast> get copyWith => _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Forecast&&(identical(other.date, date) || other.date == date)&&(identical(other.predictedCtr, predictedCtr) || other.predictedCtr == predictedCtr)&&(identical(other.lowerBound, lowerBound) || other.lowerBound == lowerBound)&&(identical(other.upperBound, upperBound) || other.upperBound == upperBound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,predictedCtr,lowerBound,upperBound);

@override
String toString() {
  return 'Forecast(date: $date, predictedCtr: $predictedCtr, lowerBound: $lowerBound, upperBound: $upperBound)';
}


}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res>  {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) = _$ForecastCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "date") DateTime? date,@JsonKey(name: "predicted_ctr") double? predictedCtr,@JsonKey(name: "lower_bound") double? lowerBound,@JsonKey(name: "upper_bound") double? upperBound
});




}
/// @nodoc
class _$ForecastCopyWithImpl<$Res>
    implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? predictedCtr = freezed,Object? lowerBound = freezed,Object? upperBound = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,predictedCtr: freezed == predictedCtr ? _self.predictedCtr : predictedCtr // ignore: cast_nullable_to_non_nullable
as double?,lowerBound: freezed == lowerBound ? _self.lowerBound : lowerBound // ignore: cast_nullable_to_non_nullable
as double?,upperBound: freezed == upperBound ? _self.upperBound : upperBound // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Forecast].
extension ForecastPatterns on Forecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Forecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Forecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Forecast value)  $default,){
final _that = this;
switch (_that) {
case _Forecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Forecast value)?  $default,){
final _that = this;
switch (_that) {
case _Forecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  DateTime? date, @JsonKey(name: "predicted_ctr")  double? predictedCtr, @JsonKey(name: "lower_bound")  double? lowerBound, @JsonKey(name: "upper_bound")  double? upperBound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Forecast() when $default != null:
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "date")  DateTime? date, @JsonKey(name: "predicted_ctr")  double? predictedCtr, @JsonKey(name: "lower_bound")  double? lowerBound, @JsonKey(name: "upper_bound")  double? upperBound)  $default,) {final _that = this;
switch (_that) {
case _Forecast():
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "date")  DateTime? date, @JsonKey(name: "predicted_ctr")  double? predictedCtr, @JsonKey(name: "lower_bound")  double? lowerBound, @JsonKey(name: "upper_bound")  double? upperBound)?  $default,) {final _that = this;
switch (_that) {
case _Forecast() when $default != null:
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Forecast implements Forecast {
  const _Forecast({@JsonKey(name: "date") this.date, @JsonKey(name: "predicted_ctr") this.predictedCtr, @JsonKey(name: "lower_bound") this.lowerBound, @JsonKey(name: "upper_bound") this.upperBound});
  factory _Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

@override@JsonKey(name: "date") final  DateTime? date;
@override@JsonKey(name: "predicted_ctr") final  double? predictedCtr;
@override@JsonKey(name: "lower_bound") final  double? lowerBound;
@override@JsonKey(name: "upper_bound") final  double? upperBound;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastCopyWith<_Forecast> get copyWith => __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Forecast&&(identical(other.date, date) || other.date == date)&&(identical(other.predictedCtr, predictedCtr) || other.predictedCtr == predictedCtr)&&(identical(other.lowerBound, lowerBound) || other.lowerBound == lowerBound)&&(identical(other.upperBound, upperBound) || other.upperBound == upperBound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,predictedCtr,lowerBound,upperBound);

@override
String toString() {
  return 'Forecast(date: $date, predictedCtr: $predictedCtr, lowerBound: $lowerBound, upperBound: $upperBound)';
}


}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) = __$ForecastCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "date") DateTime? date,@JsonKey(name: "predicted_ctr") double? predictedCtr,@JsonKey(name: "lower_bound") double? lowerBound,@JsonKey(name: "upper_bound") double? upperBound
});




}
/// @nodoc
class __$ForecastCopyWithImpl<$Res>
    implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

/// Create a copy of Forecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? predictedCtr = freezed,Object? lowerBound = freezed,Object? upperBound = freezed,}) {
  return _then(_Forecast(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,predictedCtr: freezed == predictedCtr ? _self.predictedCtr : predictedCtr // ignore: cast_nullable_to_non_nullable
as double?,lowerBound: freezed == lowerBound ? _self.lowerBound : lowerBound // ignore: cast_nullable_to_non_nullable
as double?,upperBound: freezed == upperBound ? _self.upperBound : upperBound // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$Recommendation {

@JsonKey(name: "trend") String? get trend;@JsonKey(name: "change_percent") double? get changePercent;@JsonKey(name: "message") String? get message;@JsonKey(name: "suggested_daily_budget") int? get suggestedDailyBudget;
/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationCopyWith<Recommendation> get copyWith => _$RecommendationCopyWithImpl<Recommendation>(this as Recommendation, _$identity);

  /// Serializes this Recommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Recommendation&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.message, message) || other.message == message)&&(identical(other.suggestedDailyBudget, suggestedDailyBudget) || other.suggestedDailyBudget == suggestedDailyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trend,changePercent,message,suggestedDailyBudget);

@override
String toString() {
  return 'Recommendation(trend: $trend, changePercent: $changePercent, message: $message, suggestedDailyBudget: $suggestedDailyBudget)';
}


}

/// @nodoc
abstract mixin class $RecommendationCopyWith<$Res>  {
  factory $RecommendationCopyWith(Recommendation value, $Res Function(Recommendation) _then) = _$RecommendationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "trend") String? trend,@JsonKey(name: "change_percent") double? changePercent,@JsonKey(name: "message") String? message,@JsonKey(name: "suggested_daily_budget") int? suggestedDailyBudget
});




}
/// @nodoc
class _$RecommendationCopyWithImpl<$Res>
    implements $RecommendationCopyWith<$Res> {
  _$RecommendationCopyWithImpl(this._self, this._then);

  final Recommendation _self;
  final $Res Function(Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trend = freezed,Object? changePercent = freezed,Object? message = freezed,Object? suggestedDailyBudget = freezed,}) {
  return _then(_self.copyWith(
trend: freezed == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String?,changePercent: freezed == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,suggestedDailyBudget: freezed == suggestedDailyBudget ? _self.suggestedDailyBudget : suggestedDailyBudget // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Recommendation].
extension RecommendationPatterns on Recommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Recommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Recommendation value)  $default,){
final _that = this;
switch (_that) {
case _Recommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Recommendation value)?  $default,){
final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "trend")  String? trend, @JsonKey(name: "change_percent")  double? changePercent, @JsonKey(name: "message")  String? message, @JsonKey(name: "suggested_daily_budget")  int? suggestedDailyBudget)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "trend")  String? trend, @JsonKey(name: "change_percent")  double? changePercent, @JsonKey(name: "message")  String? message, @JsonKey(name: "suggested_daily_budget")  int? suggestedDailyBudget)  $default,) {final _that = this;
switch (_that) {
case _Recommendation():
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "trend")  String? trend, @JsonKey(name: "change_percent")  double? changePercent, @JsonKey(name: "message")  String? message, @JsonKey(name: "suggested_daily_budget")  int? suggestedDailyBudget)?  $default,) {final _that = this;
switch (_that) {
case _Recommendation() when $default != null:
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Recommendation implements Recommendation {
  const _Recommendation({@JsonKey(name: "trend") this.trend, @JsonKey(name: "change_percent") this.changePercent, @JsonKey(name: "message") this.message, @JsonKey(name: "suggested_daily_budget") this.suggestedDailyBudget});
  factory _Recommendation.fromJson(Map<String, dynamic> json) => _$RecommendationFromJson(json);

@override@JsonKey(name: "trend") final  String? trend;
@override@JsonKey(name: "change_percent") final  double? changePercent;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "suggested_daily_budget") final  int? suggestedDailyBudget;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationCopyWith<_Recommendation> get copyWith => __$RecommendationCopyWithImpl<_Recommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Recommendation&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.message, message) || other.message == message)&&(identical(other.suggestedDailyBudget, suggestedDailyBudget) || other.suggestedDailyBudget == suggestedDailyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trend,changePercent,message,suggestedDailyBudget);

@override
String toString() {
  return 'Recommendation(trend: $trend, changePercent: $changePercent, message: $message, suggestedDailyBudget: $suggestedDailyBudget)';
}


}

/// @nodoc
abstract mixin class _$RecommendationCopyWith<$Res> implements $RecommendationCopyWith<$Res> {
  factory _$RecommendationCopyWith(_Recommendation value, $Res Function(_Recommendation) _then) = __$RecommendationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "trend") String? trend,@JsonKey(name: "change_percent") double? changePercent,@JsonKey(name: "message") String? message,@JsonKey(name: "suggested_daily_budget") int? suggestedDailyBudget
});




}
/// @nodoc
class __$RecommendationCopyWithImpl<$Res>
    implements _$RecommendationCopyWith<$Res> {
  __$RecommendationCopyWithImpl(this._self, this._then);

  final _Recommendation _self;
  final $Res Function(_Recommendation) _then;

/// Create a copy of Recommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trend = freezed,Object? changePercent = freezed,Object? message = freezed,Object? suggestedDailyBudget = freezed,}) {
  return _then(_Recommendation(
trend: freezed == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String?,changePercent: freezed == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,suggestedDailyBudget: freezed == suggestedDailyBudget ? _self.suggestedDailyBudget : suggestedDailyBudget // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
